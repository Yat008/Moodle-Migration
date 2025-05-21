#!/bin/bash
# backup-old.sh

echo "📁 Backup von Moodle-Dateien..."
mkdir -p ./moodle_files
rsync -av /var/www/html/ ./moodle_files/

echo "🗄 Backup der MariaDB-Datenbank..."
mysqldump -u root -p moodle > moodle_backup.sql

echo "✅ Backup abgeschlossen. Moodle-Dateien: ./moodle_files, DB-Dump: moodle_backup.sql"
