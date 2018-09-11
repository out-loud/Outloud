#!/bin/bash

IMAGE_NAME=$1
REGISTRY=$2
BRANCH=$3

DOCKER_TAG=''

case "$BRANCH" in
  "master")
    DOCKER_TAG=latest
    ;;
  "develop")
    DOCKER_TAG=dev
    ;;    
esac

IMAGE_IN_REGISTRY_NAME="${REGISTRY}/${IMAGE_NAME}"

docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD 
docker tag $IMAGE_NAME $IMAGE_IN_REGISTRY_NAME:$DOCKER_TAG
docker push $IMAGE_IN_REGISTRY_NAME:$DOCKER_TAG