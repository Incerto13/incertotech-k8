# !/bin/bash

source .env
docker compose build --no-cache && docker compose up --force-recreate -d
