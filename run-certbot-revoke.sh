# !/bin/bash

source .env

# Start certbot in sleep mode
docker compose -f docker-compose.ssl.yml up certbot-revoke -d

# revoke certificate 
docker exec certbot-revoke sh -c "\
  certbot revoke \
    --cert-path /etc/letsencrypt/live/${BASE_DOMAIN}/cert.pem \
    --reason keycompromise \
    --non-interactive"

# confirm certificate is gone
docker exec certbot-revoke sh -c "certbot certificates"
