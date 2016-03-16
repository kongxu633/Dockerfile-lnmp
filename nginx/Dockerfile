FROM nginx:1.9.0

ADD nginx.conf /etc/nginx/nginx.conf
ADD sites-enabled/* /etc/nginx/conf.d/
RUN mkdir -p /var/www && mkdir -p /var/www/log && mkdir -p /var/www/log/nginx
RUN chown -R www-data.www-data /var/www /var/www/log

EXPOSE 80
VOLUME ["/var/www"]