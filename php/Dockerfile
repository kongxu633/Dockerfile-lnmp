FROM php:5.6-fpm

RUN docker-php-ext-install pdo_mysql

# PHP config
ADD php.ini /usr/local/etc/php/php.ini
ADD php-fpm.conf /usr/local/etc/php-fpm.conf

WORKDIR /var/www

EXPOSE 9000
VOLUME ["/var/www"]
