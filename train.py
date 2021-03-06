"""
Train an autoencoder model to learn to encode songs.
"""

import random

import numpy as np
from matplotlib import pyplot as plt

import midi_utils
import models

import argparse

#  Load Keras
print("Loading tensorflow...")
import os
import tensorflow as tf
import tensorflow.keras

print("tf.Keras version: " + tensorflow.keras.__version__)

from tensorflow.keras.models import load_model
from tensorflow.keras import backend as K
from tensorflow.keras.losses import binary_crossentropy
from tensorflow.keras.optimizers import Adam, RMSprop, SGD


####### code for tensorflow gpu #########
import os
os.environ["KMP_DUPLICATE_LIB_OK"]="TRUE"
os.environ["CUDA_VISIBLE_DEVICES"]="0,1"

config = tf.compat.v1.ConfigProto()
config.gpu_options.allow_growth = True
sess = tf.compat.v1.Session(config=config)

os.environ['TF_GPU_ALLOCATOR']="cuda_malloc_async"
#####   



EPOCHS_QTY = 2000
EPOCHS_TO_SAVE = [1, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 120, 140, 160, 180, 200, 250, 300, 350, 400, 450]
LEARNING_RATE = 0.001  # learning rate
CONTINUE_TRAIN = False
GENERATE_ONLY = False

WRITE_HISTORY = True
NUM_RAND_SONGS = 10

# network params
DROPOUT_RATE = 0.1
BATCHNORM_MOMENTUM = 0.9  # weighted normalization with the past

#BATCH_SIZE = 350
BATCH_SIZE = 350
MAX_WINDOWS = 16  # the maximal number of measures a song can have
LATENT_SPACE_SIZE = 120
NUM_OFFSETS = 1

K.set_image_data_format('channels_first')

# Fix the random seed so that training comparisons are easier to make
np.random.seed(0)
random.seed(0)


def generate_random_songs(decoder, write_dir, random_vectors):
    """
    Generate random songs using random latent vectors.
    :param decoder:
    :param write_dir:
    :param random_vectors:
    :return:
    """
    
    for i in range(random_vectors.shape[0]):
        print("Generating song " + str(i+1) + "/" + str(random_vectors.shape[0]))
        random_latent_x = random_vectors[i:i + 1]
        #y_song = decoder([random_latent_x])[0]
        y_song = decoder(random_latent_x)
        midi_utils.samples_to_midi(y_song[0], write_dir + 'random_vectors' + str(i) + '.mid', 32)


def calculate_and_store_pca_statistics(encoder, x_orig, y_orig, write_dir):
    """
    Calculate means, stddevs, covariance singular values (pca values), covariance singular vectors (pca vectors)
    to more efficiently navigate/find configurations in the latent space.
    :param encoder:
    :param x_orig:
    :param y_orig:
    :param write_dir:
    :return:
    """

    latent_x = np.squeeze(encoder(y_orig).numpy())

    latent_mean = np.mean(latent_x, axis=0)
    latent_stds = np.std(latent_x, axis=0)
    latent_cov = np.cov((latent_x - latent_mean).T)
    _, latent_pca_values, latent_pca_vectors = np.linalg.svd(latent_cov)
    latent_pca_values = np.sqrt(latent_pca_values)

    print("Latent Mean values: ", latent_mean[:6])
    print("Latent PCA values: ", latent_pca_values[:6])

    np.save(write_dir + 'latent_means.npy', latent_mean)
    np.save(write_dir + 'latent_stds.npy', latent_stds)
    np.save(write_dir + 'latent_pca_values.npy', latent_pca_values)
    np.save(write_dir + 'latent_pca_vectors.npy', latent_pca_vectors)
    return latent_mean, latent_stds, latent_pca_values, latent_pca_vectors


def generate_normalized_random_songs(x_orig, y_orig, encoder, decoder, random_vectors, write_dir):
    """
    Generate a number of random songs from some normal latent vector samples.
    :param encoder:
    :param x_orig:
    :param y_orig:
    :param decoder:
    :param write_dir:
    :param random_vectors:
    :return:
    """
    latent_mean, latent_stds, pca_values, pca_vectors = calculate_and_store_pca_statistics(encoder, x_orig, y_orig, write_dir)

    latent_vectors = latent_mean + np.dot(random_vectors * pca_values, pca_vectors)
    generate_random_songs(decoder, write_dir, latent_vectors)

def train(samples_path='data/interim/samples.npy', lengths_path='data/interim/lengths.npy', epochs_qty=EPOCHS_QTY, learning_rate=LEARNING_RATE,continue_train=CONTINUE_TRAIN):

    # Create folders to save models into
    if not os.path.exists('results'):
        os.makedirs('results')
    if WRITE_HISTORY and not os.path.exists('results/history'):
        os.makedirs('results/history')

    # Load dataset into memory
    print("Loading Data...")
    if not os.path.exists(samples_path) or not os.path.exists(lengths_path):
        print('No input data found, run preprocess_songs.py first.')
        exit(1)

    y_samples = np.load(samples_path)
    y_lengths = np.load(lengths_path)

    samples_qty = y_samples.shape[0]
    songs_qty = y_lengths.shape[0]
    print("Loaded " + str(samples_qty) + " samples from " + str(songs_qty) + " songs.")
    print(np.sum(y_lengths))
    assert (np.sum(y_lengths) == samples_qty)

    print("Preparing song samples, padding songs...")
    x_shape = (songs_qty * NUM_OFFSETS, 1) 
    x_orig = np.expand_dims(np.arange(x_shape[0]), axis=-1)

    y_shape = (songs_qty * NUM_OFFSETS, MAX_WINDOWS) + y_samples.shape[1:]  # (songs_qty, max number of windows, window pitch qty, window beats per measure)
    y_orig = np.zeros(y_shape, dtype=y_samples.dtype)  # prepare dataset array

    # fill in measure of songs into input windows for network
    song_start_ix = 0
    song_end_ix = y_lengths[0]
    for song_ix in range(songs_qty):
        for offset in range(NUM_OFFSETS):
            ix = song_ix * NUM_OFFSETS + offset  # calculate the index of the song with its offset
            song_end_ix = song_start_ix + y_lengths[song_ix]  # get song end ix
            for window_ix in range(MAX_WINDOWS):  # get a maximum number of measures from a song
                song_measure_ix = (window_ix + offset) % y_lengths[song_ix]  # chosen measure of song to be placed in window (modulo song length)
                y_orig[ix, window_ix] = y_samples[song_start_ix + song_measure_ix]  # move measure into window
        song_start_ix = song_end_ix  # new song start index is previous song end index
    assert (song_end_ix == samples_qty)
    x_train = np.copy(x_orig)
    y_train = np.copy(y_orig)

    # copy some song from the samples and write it to midi again
    test_ix = 0
    y_test_song = np.copy(y_train[test_ix: test_ix + 1])
    x_test_song = np.copy(x_train[test_ix: test_ix + 1])
    midi_utils.samples_to_midi(y_test_song[0], 'data/interim/gt.mid')



    #  create model
    if continue_train or GENERATE_ONLY:
        print("Loading encoder...")
        encoder = load_model('results/history/_encoder.h5')
        print('Loading decoder...')
        decoder = load_model('results/history/_decoder.h5')
        
        
        autoencoder = models.create_autoencoder(input_shape=y_shape[1:],
                                                latent_space_size=LATENT_SPACE_SIZE,
                                                dropout_rate=DROPOUT_RATE,
                                                max_windows=MAX_WINDOWS,
                                                batchnorm_momentum=BATCHNORM_MOMENTUM,
                                                encoder=encoder,
                                                decoder=decoder)
        

        autoencoder.compile(optimizer=RMSprop(learning_rate=learning_rate), loss='binary_crossentropy')
    else:
        print("Building model from models.py...")
        autoencoder = models.create_autoencoder(input_shape=y_shape[1:],
                                                latent_space_size=LATENT_SPACE_SIZE,
                                                dropout_rate=DROPOUT_RATE,
                                                max_windows=MAX_WINDOWS,
                                                batchnorm_momentum=BATCHNORM_MOMENTUM)


        autoencoder.compile(optimizer=RMSprop(lr=learning_rate), loss='binary_crossentropy')


    #  train
    print("Referencing sub-models...")
    decoder = autoencoder.decoder
    encoder = autoencoder.encoder

    random_vectors = np.random.normal(0.0, 1.0, (NUM_RAND_SONGS, LATENT_SPACE_SIZE))
    np.save('data/interim/random_vectors.npy', random_vectors)

    print("Training model...")
    offset = 0

    for epoch in range(epochs_qty):
        print("Training epoch: ", epoch, "of", epochs_qty)
  
        # produce songs from its samples with a different starting point of the song each time
        song_start_ix = 0
        for song_ix in range(songs_qty):
            song_end_ix = song_start_ix + y_lengths[song_ix]
            for window_ix in range(MAX_WINDOWS):
                song_measure_ix = (window_ix + offset) % y_lengths[song_ix]
                y_train[song_ix, window_ix] = y_samples[song_start_ix + song_measure_ix]
            song_start_ix = song_end_ix
        assert (song_end_ix == samples_qty)
        offset += 1

        history = autoencoder.fit(y_train, y_train, batch_size=BATCH_SIZE, epochs=1)  # train model on reconstruction loss

        # save model periodically
        save_epoch = epoch + 1
        if save_epoch in EPOCHS_TO_SAVE or (save_epoch % 100 == 0) or save_epoch == epochs_qty:
            write_dir = ''
            if WRITE_HISTORY:
                # Create folder to save models into
                write_dir += 'results/history/e' + str(save_epoch)
                if not os.path.exists(write_dir):
                    os.makedirs(write_dir)
                write_dir += '/'
                autoencoder.save('results/history/')
            else:
                autoencoder.save('results/')

            print("...Saved.")


            y_song = autoencoder.predict(y_test_song, batch_size=BATCH_SIZE)[0]

            midi_utils.samples_to_midi(y_song, write_dir + 'test.mid')

            generate_normalized_random_songs(x_orig, y_orig, encoder, decoder, random_vectors, write_dir)

    print("...Done.")


if __name__ == "__main__":
    # configure parser and parse arguments
    parser = argparse.ArgumentParser(description='Train to reconstruct midi in autoencoder.')
    parser.add_argument('--samples_path', default='data/interim/samples.npy', type=str, help='Path to samples numpy array.')
    parser.add_argument('--lengths_path', default='data/interim/lengths.npy', type=str, help='Path to sample lengths numpy array.')
    parser.add_argument('--epochs_qty', default=EPOCHS_QTY, type=int, help='The number of epochs to be trained.')
    parser.add_argument('--learning_rate', default=LEARNING_RATE, type=float, help='The learning rate to train the model.')
    parser.add_argument('--continue_train', default=CONTINUE_TRAIN, type=bool, help='Continue to train a model')


    args = parser.parse_args()
    epochs_qty = args.epochs_qty
    learning_rate = args.learning_rate
    samples_path = args.samples_path
    lengths_path = args.lengths_path
    continue_train = args.continue_train
    
    train(samples_path, lengths_path, epochs_qty, learning_rate,continue_train)
