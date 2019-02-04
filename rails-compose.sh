#!/bin/sh

touch Gemfile.lock

git clone https://github.com/tyanakaz/atNuda-swaggerhub-rails5.git
cp -a atNuda-swaggerhub-rails5/* .
rm -rf atNuda-swaggerhub-rails

sleep 5 

docker-compose build --force-rm

sleep 5

docker-compose up -d && docker-compose exec api rake db:create
docker-compose up -d && docker-compose exec api rake db:migrate
