#!/bin/sh

touch Gemfile.lock

git clone https://github.com/tyanakaz/atNuda-swaggerhub-rails5.git

sleep 5 

docker-compose build --force-rm

sleep 5

docker-compose up -d && docker-compose exec api rake db:create
docker-compose up -d && docker-compose exec api rake db:migrate
