#!/bin/bash

IMAGE_NAME=$1
ENVIRONMENT=$2
NUGET_VERSION=$3
NUGET_API_KEY=$4

export NUGET_VERSION
export NUGET_API_KEY

TEST_IMAGE_NAME="${IMAGE_NAME}.tests"
DOCKER_COMPOSE_PATH=`readlink -f "../Outloud/docker-compose.${ENVIRONMENT}.yml"`

docker-compose -f $DOCKER_COMPOSE_PATH up --abort-on-container-exit $TEST_IMAGE_NAME