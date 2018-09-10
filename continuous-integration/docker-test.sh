#!/bin/bash

IMAGE_NAME=$1
ENVIRONMENT=$2

TEST_IMAGE_NAME="${IMAGE_NAME}.tests"
DOCKER_COMPOSE_PATH=`readlink -f "./docker-compose.${ENVIRONMENT}.yml"`

docker-compose -f $DOCKER_COMPOSE_PATH up --abort-on-container-exit $TEST_IMAGE_NAME