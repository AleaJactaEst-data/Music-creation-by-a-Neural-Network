Requirements :
matplotlib, pygame, pyaudio,pydot, tensorflow, pyaudio, numpy, mido, argparse

Reference :
https://github.com/HackerPoet/Composer

## How does it work

Data had to be deleted in order to be sent to Moodle. To have it back, just do the first second two steps.

* Use the scrapping python code "python scraping.py". It will download files in data/raw
* Run preprocess_songs.py. This will load all midi files from your midi files folder data/raw/ into data/interim/samples.npy & lengths.npy.
If you want to train it :
   * Run train.py. This will train your network. You can continue the training by putting : train.py --continue_train "True". It will load the encoder and decoder
     but will begin as if it is the first epoch
* Run composer.py --model "e600/" where "e600/" indicates , the folder the stored model is in.

## How to just test it

* You can test the latest model with just composer.py --model "e600/" and play with the parameters then.

## Find songs

You can find already predicted songs in the Songs folder

## Composer

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
