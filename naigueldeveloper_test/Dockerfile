FROM ruby:2.5.1

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /webhook_naigueldev
WORKDIR /webhook_naigueldev

ADD Gemfile /webhook_naigueldev/Gemfile
ADD Gemfile.lock /webhook_naigueldev/Gemfile.lock

RUN bundle install

ADD . /webhook_naigueldev