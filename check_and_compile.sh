#!/bin/bash

# Check if Docker is installed
if ! command -v docker &> /dev/null
then
    echo "Docker is not installed. Please install Docker and try again."
    exit 1
fi

echo "Using $(command -v docker) to build the LaTeX document."

docker build --quiet --output type=local,dest=out --target result -f docker/Dockerfile_check . > /dev/null
docker build --quiet --output type=local,dest=out --target pdf -f docker/Dockerfile_build . > /dev/null

echo "Words:  $(wc -w < out/words.txt)"
echo "Errors: $(wc -l < out/check.txt)"