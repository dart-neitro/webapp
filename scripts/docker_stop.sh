#!/bin/bash

echo "stop docker images"
docker stop $(docker ps -q --filter ancestor="images_parser")
