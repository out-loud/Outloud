#!/bin/bash

IMAGE_NAME=$1
ENVIRONMENT=$2
REGISTRY=$3
BRANCH=$4

echo "### Pulling"
.git-pull.sh
echo -e "\n"

echo "### Building"
.\docker-build.sh $ENVIRONMENT
echo -e "\n"

echo "### Testing"
.\docker-test.sh $IMAGE_NAME $ENVIRONMENT
echo -e "\n"

echo "### Cleaning"
.\docker-clean.sh $IMAGE_NAME $ENVIRONMENT
echo -e "\n"

echo "### Publishing"
.\docker-publish.sh $IMAGE_NAME $REGISTRY $BRANCH
echo -e "\n"


read -p "Press enter to continue"