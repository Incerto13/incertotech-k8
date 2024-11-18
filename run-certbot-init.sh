# !/bin/bash

source .env

# start nginx and start certbot in sleep mode
docker compose -f docker-compose.ssl.yml up nginx certbot-init -d

# init/renew/expand domains
docker exec -it certbot-init sh -c "\
  certbot certonly \
    --webroot -w /var/www/certbot \
    --force-renewal \
    --email ${LETSENCRYPT_EMAIL} \
    -d ${BASE_DOMAIN} \
    -d ${REACT_TO_DO_DOMAIN} \
    -d ${REACT_ELECTORAL_MAP_DOMAIN} \
    -d ${REACT_COURSE_ADMIN_DOMAIN} \
    -d ${NEST_TO_DO_API_DOMAIN} \
    -d ${NEST_BLOG_API_DOMAIN} \
    -d ${NEST_COURSE_ADMIN_API_DOMAIN} \
    --agree-tos"

# list all the domains on certificates
docker exec -it certbot-init certbot certificates