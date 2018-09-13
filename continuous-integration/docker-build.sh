#!/bin/bash

ENVIRONMENT=$1
NUGET_VERSION=$2
NUGET_API_KEY=$3

export NUGET_VERSION
export NUGET_API_KEY

DOCKER_COMPOSE_PATH=`readlink -f "../Outloud/docker-compose.${ENVIRONMENT}.yml"`

docker-compose -f $DOCKER_COMPOSE_PATH build