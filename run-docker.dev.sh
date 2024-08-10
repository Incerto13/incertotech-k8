# !/bin/bash

# Note: env variables should be set to local-k8

echo building portfolio projects locally to run in docker...

# navigate to all projects and run docker from respective root directories
cd homepage
bash run-docker.dev.sh
cd ..
cd react-course-admin
bash run-docker.dev.sh
cd ..
cd react-electoral-map
bash run-docker.dev.sh
cd ..
cd react-to-do
bash run-docker.dev.sh
cd ..

# run nginx proxy server is not needed (and won't work) in local dev

echo hompeage and portfolio projects successfully built and running in docker
echo hompage is now running on: http://localhost:8080

