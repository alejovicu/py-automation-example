#! /usr/bin/sh

cd db
./deploy-db.sh

cd ../api
./deploy-api.sh