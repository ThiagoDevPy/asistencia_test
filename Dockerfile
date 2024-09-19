# Usa una imagen base de PHP con Apache
FROM php:8.1-apache

# Instala extensiones necesarias (ajusta según tus necesidades)
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copia todos los archivos del proyecto al contenedor en /var/www/html
COPY . /var/www/html/

# Expone el puerto 80
EXPOSE 80