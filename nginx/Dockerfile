FROM nginx:1.9.0
COPY nginx.conf /etc/nginx/nginx.conf
COPY sites-enabled/* /etc/nginx/conf.d/
EXPOSE 80
VOLUME ["/var/www"]
