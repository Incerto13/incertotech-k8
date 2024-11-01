# !/bin/bash

source .env

# run server and apps
docker compose build --no-cache && docker compose up --force-recreate -d
