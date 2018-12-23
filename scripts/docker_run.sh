#!/bin/bash
echo "go to directory"
cd "$(pwd)"

echo "Render build"
docker build -t images_parser .

echo "start container"

docker run -it -d \
    -p 3031:3031 \
    --volume "$(pwd)"/application:/app \
    images_parser 


 
