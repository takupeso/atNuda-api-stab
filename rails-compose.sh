#!/bin/sh

touch Gemfile.lock


# Full stack
# docker-compose run api rails new . --database=mysql

# API
docker-compose run api rails new . --database=mysql --api 

sleep 5 

docker-compose build --force-rm

sleep 5

docker-compose up -d && docker-compose exec api rake db:create
docker-compose up -d && docker-compose exec api rake db:migrate
