#!/bin/bash
set -e

# Stop and remove running containers (if any)
container_ids=$(docker ps -q)

if [ -n "$container_ids" ]; then
  echo "Stopping and removing the following containers: $container_ids"
  docker rm -f $container_ids
else
  echo "No running containers found."
fi

# Build Docker image
docker build -t simple-python-flask-app .

# Run the new Docker container
docker run -d -p 80:80 simple-python-flask-app
