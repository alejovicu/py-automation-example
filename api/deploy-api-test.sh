#! /usr/bin/sh

docker run --rm --link py-api:py-api byrnedo/alpine-curl http://py-api:5000/user/