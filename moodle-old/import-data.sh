#!/bin/bash

# Quellen (lokal)
SRC_WWWROOT=~/var/www/html
SRC_MOODLEDATA=~var/www/moodledata

# Ziele
DEST_DIR=./moodle-old
DEST_WWWROOT=$DEST_DIR/wwwroot-old
DEST_DATA=$DEST_DIR/data/moodledata-old

echo "📁 Kopiere wwwroot ..."
cp -r $SRC_WWWROOT/* $DEST_WWWROOT/

echo "📁 Kopiere moodledata ..."
cp -r $SRC_MOODLEDATA/* $DEST_DATA/

echo "✅ Alle Dateien erfolgreich vorbereitet in $DEST_DIR"
