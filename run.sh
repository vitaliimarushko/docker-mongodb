#!/bin/bash

containerName=docker-mongodb-1
volumeName=mongodbdata

# create a volume if it doesn't exist
existentVolume=$(docker volume ls -f name=$volumeName --format "{{.Name}}")

if [[ "$existentVolume" != "$volumeName" ]];
  then
    docker volume create "$volumeName"
fi

# kill the old container
docker stop "$containerName"
docker rm "$containerName"

# run a new container
docker run -d \
  --name "$containerName" \
  -e MONGO_INITDB_ROOT_USERNAME=root \
  -e MONGO_INITDB_ROOT_PASSWORD=1 \
  -p 27018:27017 \
  -v "$volumeName":/data/db \
  mongo
