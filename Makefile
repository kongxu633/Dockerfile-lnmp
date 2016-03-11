pull:
	docker pull nginx:1.9.0
	docker pull php:5.6-fpm
	docker pull mysql:5.6
	docker pull redis:3.0
	

dl:
	wget https://pecl.php.net/get/redis-2.2.7.tgz -O php/redis.tgz
	wget https://getcomposer.org/composer.phar -O php/composer.phar

build:
	make build-nginx
	make build-mysql
	make build-php

build-nginx:
	docker build -t test/nginx ./nginx

run-nginx:
	docker run -i -d -p 80:80 -v /var/www:/var/www -t ./nginx

in-nginx:
	docker run -i -p 80:80 -v /var/www:/var/www -t ./nginx /bin/bash

build-php:
	docker build -t test/php ./php

run-php:
	docker run -i -d -p 9000:9000 -v /var/www:/var/www -t ./php

in-php:
	docker run -i -p 9000:9000 -v /var/www:/var/www -t ./php /bin/bash

build-mysql:
	docker build -t test/mysql ./mysql

run-mysql:
	docker run -i -d -p 3306:3306 -v /data/www/mysql:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=123456 -t ./mysql

in-mysql:
	docker run -i -p 3306:3306  -v /data/www/mysql:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=123456 -t ./mysql /bin/bash
	
clean:
	docker rmi -f $(shell docker images | grep "<none>" | awk "{print \$3}")