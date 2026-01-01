#!/bin/bash

docker pull mydockerhub/backend:staging
docker pull mydockerhub/frontend:staging

docker compose down
docker compose up -d

curl http://localhost:5000/health
