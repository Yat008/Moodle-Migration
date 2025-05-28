#!/bin/bash

# Quellen (lokal)
SRC_WWWROOT=~/Downloads/moodle/wwwroot
SRC_MOODLEDATA=~/Downloads/moodle/moodledata
SRC_SQL=~/Downloads/moodle/backup.sql

# Ziele
DEST_DIR=./moodle-old
DEST_WWWROOT=$DEST_DIR/wwwroot-old
DEST_DATA=$DEST_DIR/data/moodledata-old
DEST_SQL=$DEST_DIR/backup.sql

echo "🛠️ Erstelle Zielverzeichnisse ..."
mkdir -p $DEST_WWWROOT
mkdir -p $DEST_DATA

echo "📁 Kopiere wwwroot ..."
cp -r $SRC_WWWROOT/* $DEST_WWWROOT/

echo "📁 Kopiere moodledata ..."
cp -r $SRC_MOODLEDATA/* $DEST_DATA/

echo "📄 Kopiere Datenbank-Backup ..."
cp $SRC_SQL $DEST_SQL

echo "✅ Alle Dateien erfolgreich vorbereitet in $DEST_DIR"
