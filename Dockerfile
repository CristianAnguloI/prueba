FROM ubuntu
RUN apt-get update
RUN apt-get install apache2 -y
RUN echo "Apache con Docker!" > /var/www/html/index.html
EXPOSE 81
ENTRYPOINT apache2ctl -D FOREGROUND
