#!/bin/bash

echo "🛠 Starte MariaDB-Container..."
docker compose up -d moodle-db

echo "⏳ Warte 15 Sekunden, bis DB bereit ist..."
sleep 15

echo "📥 Importiere Moodle-Datenbank-Dump..."
docker exec -i moodle-db mysql -u root -pmoodleroot moodle < moodle_backup.sql

echo "🛠 Starte Moodle-Container..."
docker compose up -d moodle

echo "✅ Moodle läuft jetzt unter http://localhost"
