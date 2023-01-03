#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=kutinka123/predict-app:latest
# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag predict-app $dockerpath
docker login --username kutinka123 --password "Tunx06)^!((!"
# Step 3:
# Push image to a docker repository
docker push $dockerpath