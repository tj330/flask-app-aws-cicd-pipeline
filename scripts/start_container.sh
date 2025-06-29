#!/bin/bash
cd /opt/codedeploy-agent/deployment-root/deployment-*/deployment-archive

set -e

# Pull the Docker image from Docker Hub
docker pull tj330/simple-python-flask-app:latest

# Run the Docker image as a container
docker run -d -p 5000:5000 tj330/simple-python-flask-app:latest
