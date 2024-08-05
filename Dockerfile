FROM ubuntu:20.04

ENV CONTAINER_TIMEZONE="America/New_York"
RUN ln -snf /usr/share/zoneinfo/$CONTAINER_TIMEZONE /etc/localtime && echo $CONTAINER_TIMEZONE > /etc/timezone

RUN apt update && apt install -y apache2

RUN a2enmod proxy
RUN a2enmod proxy_http

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_RUN_DIR /var/www/html

CMD ["-D", "FOREGROUND"]