FROM php:8.1.18-apache as php
COPY ./ /var/www/html
RUN chown -R www-data:www-data /var/www/html \
&& chmod -R 774 /var/www/html \  
&& find /var/www/html -type d -exec chmod g+s {} \;
EXPOSE 80 
RUN apt update -y && apt upgrade -y
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

FROM mysql:latest as sql
COPY redlock-db.sql /docker-entrypoint-initdb.d/

#CMD["index.php"]
