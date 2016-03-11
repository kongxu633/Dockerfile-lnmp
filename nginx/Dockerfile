FROM nginx:1.9.0

ADD nginx.conf /etc/nginx/nginx.conf
ADD sites-enabled/* /etc/nginx/conf.d/
RUN mkdir -p /data/www/htdocs && mkdir -p /data/www/log && mkdir -p /data/www/log/nginx
RUN chown -R webuser.webuser /data/www/htdocs /data/log

EXPOSE 80
VOLUME ["/weichuncai"]