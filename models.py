#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""
The models used for music generation.
"""

from tensorflow.keras import backend as K
from tensorflow.keras.layers import Input, Dense, Activation, Dropout, Flatten, Reshape, TimeDistributed, Lambda, InputLayer
from tensorflow.keras.layers import Embedding
#from keras.layers.normalization import BatchNormalization
from tensorflow.keras.layers import BatchNormalization
from tensorflow.keras.models import Model

from tensorflow.keras import Sequential


def vae_sampling(args):
    z_mean, z_log_sigma_sq, vae_b1 = args
    epsilon = K.random_normal(shape=K.shape(z_mean), mean=0.0, stddev=vae_b1)
    return z_mean + K.exp(z_log_sigma_sq * 0.5) * epsilon


def create_autoencoder(input_shape, latent_space_size, dropout_rate, max_windows, batchnorm_momentum, encoder = None, decoder = None, use_vae=False, vae_b1=0.02, use_embedding=False, embedding_input_shape=None, embedding_shape=None):
    autoencoder = Autoencoder(max_windows, batchnorm_momentum, input_shape, latent_space_size, dropout_rate, encoder, decoder)
    return autoencoder

def create_autoencoder_model(input_shape, latent_space_size, dropout_rate, max_windows, batchnorm_momentum, use_vae=False, vae_b1=0.02, use_embedding=False, embedding_input_shape=None, embedding_shape=None):
    """
    Create larger autoencoder with the options of making it variational and embedding.
    :param input_shape:
    :param latent_space_size:
    :param dropout_rate:
    :param max_windows:
    :param batchnorm_momentum:
    :param use_vae:
    :param vae_b1:
    :param use_embedding:
    :param embedding_input_shape:
    :param embedding_shape:
    :return:
    """
    if use_embedding:
        x_in = Input(shape=embedding_input_shape)
        print((None,) + embedding_input_shape)

        x = Embedding(embedding_shape, latent_space_size, input_length=1)(x_in)
        x = Flatten(name='encoder')(x)
    else:
        x_in = Input(shape=input_shape)
        print((None,) + input_shape)

        x = Reshape((input_shape[0], -1))(x_in)
        print(K.int_shape(x))

        x = TimeDistributed(Dense(2000, activation='relu'))(x)
        print(K.int_shape(x))

        x = TimeDistributed(Dense(200, activation='relu'))(x)
        print(K.int_shape(x))

        x = Flatten()(x)
        print(K.int_shape(x))

        x = Dense(1600, activation='relu')(x)
        print(K.int_shape(x))

        if use_vae:
            z_mean = Dense(latent_space_size)(x)
            z_log_sigma_sq = Dense(latent_space_size)(x)
            x = Lambda(vae_sampling, output_shape=(latent_space_size,), name='encoder')([z_mean, z_log_sigma_sq, vae_b1])
        else:
            x = Dense(latent_space_size)(x)
            x = BatchNormalization(momentum=batchnorm_momentum, name='encoder')(x)
    print(K.int_shape(x))

    # LATENT SPACE

    x = Dense(1600, name='decoder')(x)
    x = BatchNormalization(momentum=batchnorm_momentum)(x)
    x = Activation('relu')(x)
    if dropout_rate > 0:
        x = Dropout(dropout_rate)(x)
    print(K.int_shape(x))

    x = Dense(max_windows * 200)(x)
    print(K.int_shape(x))
    x = Reshape((max_windows, 200))(x)
    x = TimeDistributed(BatchNormalization(momentum=batchnorm_momentum))(x)
    x = Activation('relu')(x)
    if dropout_rate > 0:
        x = Dropout(dropout_rate)(x)
    print(K.int_shape(x))

    x = TimeDistributed(Dense(2000))(x)
    x = TimeDistributed(BatchNormalization(momentum=batchnorm_momentum))(x)
    x = Activation('relu')(x)
    if dropout_rate > 0:
        x = Dropout(dropout_rate)(x)
    print(K.int_shape(x))

    x = TimeDistributed(Dense(input_shape[1] * input_shape[2], activation='sigmoid'))(x)
    print(K.int_shape(x))
    x = Reshape((input_shape[0], input_shape[1], input_shape[2]))(x)
    print(K.int_shape(x))

    model = Model(x_in, x)

    return model




class Autoencoder(Model):
    def __init__(self, max_windows, batchnorm_momentum, input_shape, latent_space_size, dropout_rate, encoder, decoder):
        super(Autoencoder, self).__init__()
        #self.latent_dim = latent_dim
        if encoder is None and decoder is None : 
            self.encoder = Sequential([
                Input(shape=input_shape),
                Reshape((input_shape[0], -1)),
                TimeDistributed(Dense(2000, activation='relu')),
                TimeDistributed(Dense(200, activation='relu')),
                Flatten(),
                Dense(1600, activation='relu'),
                Dense(latent_space_size),
                BatchNormalization(momentum=batchnorm_momentum, name='encoder')
            ])
            self.decoder = Sequential([
                Dense(1600, name='decoder'),
                BatchNormalization(momentum=batchnorm_momentum),
                Activation('relu'),
                Dropout(dropout_rate),
                Dense(max_windows * 200),
                Reshape((max_windows, 200)),
                TimeDistributed(BatchNormalization(momentum=batchnorm_momentum)),
                Activation('relu'),
                Dropout(dropout_rate),

                TimeDistributed(Dense(2000)),
                TimeDistributed(BatchNormalization(momentum=batchnorm_momentum)),
                Activation('relu'),
                Dropout(dropout_rate),
                TimeDistributed(Dense(input_shape[1] * input_shape[2], activation='sigmoid')),
                Reshape((input_shape[0], input_shape[1], input_shape[2])),
            ])
        elif encoder is None and decoder is not None :
            raise(Exception('Error decoder and encoder must be of same type'))
        elif encoder is not None and decoder is  None :
            raise(Exception('Error decoder and encoder must be of same type'))
        else :
            self.encoder = encoder
            self.decoder = decoder

    def call(self, x):
        encoded = self.encoder(x)
        decoded = self.decoder(encoded)
        return decoded

    def save(self, path):
        print("Saving encoder to {}".format(path + '_encoder.h5'))
        self.encoder.save(path + '_encoder.h5')
        print("Saving decoder to {}".format(path + '_decoder.h5'))
        self.decoder.save(path + '_decoder.h5')
        


