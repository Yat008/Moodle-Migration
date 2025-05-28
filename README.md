# Anleitung zur Realisierung

## 1. Upgrade und Installation (Ubuntu/Linux)

```bash
sudo apt update
sudo apt upgrade
sudo apt install docker
sudo apt install docker-compose
sudo apt install git
```

## 2. Github Repository Klonen

```bash
git clone https://github.com/Yat008/Moodle-Migration.git
```

## 3. Altes Moodle in Container Starten

```bash
cd Moodle-Migration/moodle-old
chmod +x import-data.sh
docker-compose up -d --build
```

## 4. DB import Alt Manuell

```bash
docker cp backup.sql moodle-old/data/db-old:/backup.sql
docker exec -it moodle-old/data/db-old bash
mysql -u root -p moodle < /backup.sql
```
