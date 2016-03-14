FROM php:5.6-fpm

# Install env
RUN apt-get update && apt-get install -y git
	
# Install PHP extensions
COPY redis.tgz /home/redis.tgz

RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
        && docker-php-ext-install zip \
        && docker-php-ext-install gd \
        && docker-php-ext-install mbstring \
        && docker-php-ext-install mcrypt \
        && docker-php-ext-install mysql \
        && docker-php-ext-install mysqli \
        && docker-php-ext-install pdo_mysql
RUN pecl install /home/redis.tgz && echo "extension=redis.so" > /usr/local/etc/php/conf.d/redis.ini
		
# PHP config
ADD php.ini /usr/local/etc/php/php.ini

#Composer
ADD composer.phar /usr/local/bin/composer
RUN chmod 755 /usr/local/bin/composer

WORKDIR /var/www

EXPOSE 8000
VOLUME ["/var/www"]