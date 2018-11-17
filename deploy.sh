#! /usr/bin/sh

cd db
sh deploy-db.sh

cd ../api
sh deploy-api.sh