FROM php:5.6-fpm

# PHP config
ADD php.ini /usr/local/etc/php/php.ini
ADD php-fpm.conf /usr/local/etc/php-fpm.conf

#Composer
RUN curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer \
    && chmod 755 /usr/local/bin/composer

WORKDIR /var/www

# Write Permission
RUN usermod -u 1000 www-data

EXPOSE 9000
VOLUME ["/var/www"]
