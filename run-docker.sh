# !/bin/bash

source .env
# run certbox container
# docker compose run --rm  certbot certonly --webroot --webroot-path /var/www/certbot/ -d staging.incertotech.com

# run server and apps
# docker compose build --no-cache && docker compose up --force-recreate -d
