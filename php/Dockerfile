FROM php:5.6-fpm

# PHP config
ADD php.ini /usr/local/etc/php/php.ini
ADD php-fpm.conf /usr/local/etc/php-fpm.conf

WORKDIR /var/www

# Write Permission
RUN usermod -u 1000 www-data

EXPOSE 9000
VOLUME ["/var/www"]
