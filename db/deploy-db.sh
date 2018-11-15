#! /usr/bin/bash

docker rm -f db db-admin

docker run --name db -e POSTGRES_PASSWORD=astrongpass -p 5432:5432 -d postgres

docker run --name db-admin -p 80:80 --link db:db -e "PGADMIN_DEFAULT_EMAIL=user@domain.com" -e "PGADMIN_DEFAULT_PASSWORD=SuperSecret" -d dpage/pgadmin4
