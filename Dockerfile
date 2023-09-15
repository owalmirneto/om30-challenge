FROM ruby:3.2.2-bullseye

ENV BUNDLER_VERSION=2.4.19

RUN apt-get update -qq && apt-get install -y nodejs npm postgresql-client

RUN mkdir /rails-challenge
COPY . /rails-challenge
WORKDIR /rails-challenge
COPY .env /rails-challenge/.env

RUN gem update --system && gem install bundler --no-document
RUN bundle check || bundle install

RUN npm install

COPY . ./

CMD ["bin/rails", "s", "-b", "0.0.0.0"]
