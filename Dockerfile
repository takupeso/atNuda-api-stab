FROM ruby:2.5.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
CMD git clone https://github.com/tyanakaz/atNuda-swaggerhub-rails5.git 
RUN mkdir /usr/src/app
WORKDIR /usr/src/app
ADD Gemfile /usr/src/app/Gemfile
ADD Gemfile.lock /usr/src/app/Gemfile.lock
RUN bundle install
ADD . /usr/src/app
