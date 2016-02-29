FROM ruby:2.3

MAINTAINER Graham Jenson <graham.jenson@loyalty.co.nz>

# Create app directory
RUN mkdir /www
WORKDIR /www

COPY ./Gemfile* /www/
RUN bundle install --deployment --without development test

ADD . /www

# Run Bundler


CMD bundle exec rackup -s alchemy
