#!/bin/bash

MUSIC_DIR=$HOME/Music
ARCHIVE_LOCATION=$HOME/workspace/music-sync/all-music.tar.bz2
cd $MUSIC_DIR

tar -cvjvf $ARCHIVE_LOCATION *.mp3

