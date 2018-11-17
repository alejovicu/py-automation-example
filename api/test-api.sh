#! /usr/bin/sh

docker run --rm --link py-api:py-api byrnedo/alpine-curl http://py-api:5000/user/

docker rm -f test-api
docker run -d --name=test-api --link py-api:py-api flask-api
docker exec -i test-api behave
docker rm -f test-api