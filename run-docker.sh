# !/bin/bash

source .env
# run certbox container
docker compose run --rm  certbot certonly --webroot --webroot-path /var/www/certbot/ -d staging.incertotech.com
# run rest of containers
docker compose build --no-cache && docker compose up --force-recreate -d
