# !/bin/bash

# expand homepage links and generate final index.html file
# bash expand-homepage-links.sh homepage/index-no-links.html homepage/index.html

source .env
docker compose build --no-cache && docker compose up --force-recreate -d


