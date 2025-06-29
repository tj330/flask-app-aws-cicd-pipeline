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

exit 0
