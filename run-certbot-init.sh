# !/bin/bash

# TODO: Create a github workflow (manually triggered) that echos the ssl default.conf file and runs this
# the action should overrite the 

docker compose -f docker-compose.ssl.yml up nginx certbot-init -d