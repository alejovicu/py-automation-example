#! /usr/bin/sh

docker rm -f db-admin

docker run --name db-admin -p 8080:80 --link db:db -e "PGADMIN_DEFAULT_EMAIL=a@a.com" -e "PGADMIN_DEFAULT_PASSWORD=admin" -d dpage/pgadmin4
