#!/bin/bash
export tag="latest"
docker-compose -f docker-compose-infrastructure.yml -f docker-compose.yml up -d
read -p "Press enter to continue"