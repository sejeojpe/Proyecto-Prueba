FROM php:8.3-fpm

# Instalamos dependencias del sistema
RUN apt-get update && apt-get install -y \
    git \
    curl \
    unzip \
    libicu-dev \
    libpq-dev \
    libzip-dev \
    zip \
    libonig-dev \
    libxml2-dev \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    && docker-php-ext-install intl pdo pdo_mysql zip opcache

# Instalamos Composer globalmente
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# Creamos el directorio de la aplicación
WORKDIR /var/www/html

# Damos permisos (opcional para desarrollo)
RUN chown -R www-data:www-data /var/www/html

# Puerto expuesto por PHP-FPM
EXPOSE 9000
