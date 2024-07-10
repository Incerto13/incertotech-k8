# !/bin/bash

# expand homepage links and generate final index.html file
bash expand-homepage-links.sh homepage/index-no-links.html homepage/index.html

# create .env files for react apps
source .env
echo REACT_APP_TO_DO_DOMAIN_SERVER=$REACT_APP_TO_DO_DOMAIN_SERVER > react-to-do/web/.env
echo REACT_APP_COURSE_ADMIN_DOMAIN_SERVER=$REACT_APP_COURSE_ADMIN_DOMAIN_SERVER > react-course-admin/web/.env

# run all docker-compose.dev.yml files in root and child directories
docker-compose -f docker-compose.dev.yml  -f  react-to-do/docker-compose.dev.yml  -f  react-electoral-map/docker-compose.dev.yml  -f  react-course-admin/docker-compose.dev.yml up --build -d




