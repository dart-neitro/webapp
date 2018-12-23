#!/bin/bash
echo "go to directory"
cd "$(pwd)"

echo "Render build"
docker build -t images_parser .


 
