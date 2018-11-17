#! /usr/bin/sh

docker rm -f db

docker run --name db -e POSTGRES_PASSWORD=astrongpass -p 5432:5432 -d postgres

echo "Wait for db service up..."
sleep 15

cat data/create-db.sql | docker exec -i db psql -U postgres
cat data/create-schema.sql | docker exec -i db psql -U postgres
cat data/insert-users.sql | docker exec -i db psql -U postgres