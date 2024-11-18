# !/bin/bash

docker compose -f docker-compose.ssl.yml up nginx certbot-init -d

docker exec -it certbot-init bash -c "certbot certonly --webroot -w /var/www/certbot --force-renewal --email ${LETSENCRYPT_EMAIL} -d ${BASE_DOMAIN} -d ${REACT_TO_DO_DOMAIN} -d ${REACT_ELECTORAL_MAP_DOMAIN} -d ${REACT_COURSE_ADMIN_DOMAIN} -d ${NEST_TO_DO_API_DOMAIN} -d ${NEST_BLOG_API_DOMAIN} -d ${NEST_COURSE_ADMIN_API_DOMAIN} --agree-tos"
