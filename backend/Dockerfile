FROM php:8.3-fpm

WORKDIR /var/www/html

# Instala extensiones y herramientas necesarias
RUN apt-get update && apt-get install -y \
    git unzip libzip-dev libpng-dev libjpeg-dev libfreetype6-dev \
    && docker-php-ext-install zip gd pdo pdo_mysql \
    && docker-php-ext-enable opcache \
    && apt-get clean

# Instala Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# Copia el código fuente del backend desde el contexto (./backend)
COPY . /var/www/html

# Instala dependencias PHP
RUN composer install --no-dev --optimize-autoloader --no-interaction

# Asigna permisos correctos
RUN chown -R www-data:www-data /var/www/html

CMD ["php-fpm"]
