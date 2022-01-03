# Composer
Generates video game music using neural networks.

https://youtu.be/UWxfnNXlVy8

## How to install

* Install dependencies in python3 by running `pip install -r requirements.txt`.

## How to run

* Find some dataset to train on. More info on where to find datasets are in data/raw/README.md.
* Run preprocess_songs.py. This will load all midi files from your midi files folder data/raw/ into data/interim/samples.npy & lengths.npy.
  You can point the script to a location using the --data_folder flag one or multiple times to append more folders.
* Run train.py. This will train your network and store the progress from time to time (EPOCHS_TO_SAVE to change storing frequency).
  Only stops if you interrupt it or after 2000 epochs.
* Run composer.py --model "e1/" where "e1/" indicates the folder the stored model is in.

## Composer

The Composer script will load your trained model with is
music generator trained on the midi files you provided.
Internally, the model tries to compress a song into only 120 numbers.
The sliders adjust those numbers and are ordered from most
important (left) to least important (right).  Just the
top 40 are shown on screen.  For more details about how
this works and other fun projects, please check out my
YouTube channel 'CodeParade'.  Have fun making music!

=========================================================
```
Controls:
 Right Click - Reset all sliders
         'R' - Random Song
         'T' - Randomize off-screen sliders
         'M' - Save song as .mid file
         'W' - Save song as .wav file
         'S' - Save slider values to text file
     'Space' - Play/Pause
       'Tab' - Seek to start of song
         '1' - Square wave instrument
         '2' - Sawtooth wave instrument
         '3' - Triangle wave instrument
         '4' - Sine wave instrument
```
