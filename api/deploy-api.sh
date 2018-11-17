#! /usr/bin/sh

sh build-api.sh

docker rm -f py-api
docker run -d --name=py-api -p 30123:5000 --link db:db flask-api
