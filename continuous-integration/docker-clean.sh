#!/bin/bash

IMAGE_NAME=$1
ENVIRONMENT=$2

TEST_IMAGE_NAME="${IMAGE_NAME}.tests"
dockerComposePath=`readlink -f "./docker-compose.${ENVIRONMENT}.yml"`

docker-compose -f $dockerComposePath down
docker rmi $(docker images $TEST_IMAGE_NAME)
docker image prune --force