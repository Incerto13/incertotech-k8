# Incertotech
This is the "orchastration" repo that runs all of the demo apps (including the homepage) for incertotech.com in containers

## Let's Encrypt Certbot
When setting up a new server with ssl, do the following:
 - update the EC2 hostname and username in github actions' secrets
 - run the Certbot Init github workflow

When renewing the ssl certificate on a server, do the following:
- run the Certbot Renew github workflow

## Running in docker (local dev)
- set local env variables to local-k8
```bash
bash run-docker.dev.sh
```
Open [http://localhost:8080](http://localhost:8080) to view it in the browser.

## Running in docker (higher env)
```bash
bash run-docker.sh
```