from tensorflow.keras import backend as K
from tensorflow.keras.layers import Input, Dense, Activation, Dropout, Flatten, Reshape, TimeDistributed

from tensorflow.keras.layers import BatchNormalization
from tensorflow.keras.models import Model

from tensorflow.keras import Sequential



def create_autoencoder(input_shape, latent_space_size, dropout_rate, max_windows, batchnorm_momentum, encoder = None, decoder = None):
    autoencoder = Autoencoder(max_windows, batchnorm_momentum, input_shape, latent_space_size, dropout_rate, encoder, decoder)
    return autoencoder

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
        


