FROM php:8.1-apache

# System- und PHP-Erweiterungen installieren
RUN apt-get update && apt-get install -y \
    libpng-dev libjpeg-dev libfreetype6-dev \
    libzip-dev unzip git mariadb-client \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd zip mysqli pdo pdo_mysql \
    && apt-get clean

# Apache-Rewrite aktivieren
RUN a2enmod rewrite

# Moodle-Dateien ins Image kopieren (optional, falls du sie nicht bindest)
# COPY . /var/www/html

# Besitzer setzen (falls COPY genutzt wird)
# RUN chown -R www-data:www-data /var/www/html
