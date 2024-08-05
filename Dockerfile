FROM ubuntu:20.04

ENV TZ=America/New_York \
    DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install tzdata

# RUN apt update && apt install -y apache2

RUN a2enmod proxy
RUN a2enmod proxy_http

ENV DEBIAN_FRONTEND=noninteractive 
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_RUN_DIR /var/www/html

CMD ["-D", "FOREGROUND"]