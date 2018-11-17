#! /usr/bin/sh

sh build-api.sh

docker rm -f py-api
docker run -d --name=py-api --link db:db flask-api
