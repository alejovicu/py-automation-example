#! /usr/bin/bash

./build-api.sh

docker rm -f py-api
docker run -d --name=py-api -p 5000:5000 --link db:db flask-api
