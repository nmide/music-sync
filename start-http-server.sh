#!/bin/bash

MUSIC_DIR=$HOME/workspace/music-sync
LOG_DIR=$HOME/workspace/music-sync
MUSIC_SYNC=$HOME/workspace/scripts/music-sync/music-sync.py

cd "$MUSIC_DIR"
for i in $(pidof music-sync-httpd)
do 
   kill $i
done

/usr/bin/python3 "$MUSIC_SYNC" > "$LOG_DIR/sync.log" 2> "$LOG_DIR/sync.log"
