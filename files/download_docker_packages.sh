#!/bin/bash

IMAGE_ID=$(docker build . -q | cut -d: -f2)
CONTAINER_ID=$(docker create $IMAGE_ID)
docker cp $CONTAINER_ID:/packages .
docker rm -f $CONTAINER_ID