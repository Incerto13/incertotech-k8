# !/bin/bash

source .env
# run certbox container
# docker compose run --rm  certbot certonly --webroot --webroot-path /var/www/certbot/ -d staging.incertotech.com

# run letsencrypt init script
#  bash ./init-letsencrypt.sh

# run server and apps
docker compose build --no-cache && docker compose up --force-recreate -d
# docker compose -f docker-compose.yml --env-file .env build --no-cache && docker compose up --force-recreate -d
