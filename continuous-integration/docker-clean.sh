#!/bin/bash

environment=$1

dockerComposeOverridePath=`readlink -f "./docker-compose.${environment}.yml"`
echo -e "\n"
docker-compose -f $dockerComposePath -f $dockerComposeOverridePath down
echo -e "\n"
docker rmi $(docker images $testImageName)
echo -e "\n"
docker image prune --force
echo -e "\n"