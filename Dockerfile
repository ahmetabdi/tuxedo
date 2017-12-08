FROM ruby:2.5.0-preview1-slim-stretch

RUN apt-get update && apt-get install -y --no-install-recommends \
  build-essential \
  ruby-dev \
  libpq-dev \
  nodejs \
  git

RUN mkdir -p /app
WORKDIR /app

ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock

RUN bundle install --jobs 4
