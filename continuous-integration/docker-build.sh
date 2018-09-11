#!/bin/bash

ENVIRONMENT=$1
DOCKER_COMPOSE_PATH=`readlink -f "../Outloud/docker-compose.${ENVIRONMENT}.yml"`

docker-compose -f $DOCKER_COMPOSE_PATH build