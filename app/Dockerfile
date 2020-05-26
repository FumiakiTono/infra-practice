FROM ruby:2.7.1-alpine3.11
WORKDIR /app
ADD Gemfile.cache /app/Gemfile
ADD Gemfile.lock.cache /app/Gemfile.lock
RUN apk update && \
    apk add --no-cache yarn tzdata libxml2-dev curl-dev make gcc libc-dev g++ mariadb-dev imagemagick6-dev && \
    bundle install && \
    yarn install && \
    rm -rf /usr/local/bundle/cache/* /usr/local/share/.cache/* /var/cache/* /tmp/* && \
    apk del libxml2-dev curl-dev make gcc libc-dev g++

ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
ADD unicorn.rb /app/unicorn.rb
RUN bundle install
RUN bundle exec unicorn -v
#RUN bundle exec unicorn -c unicorn.rb -D
#RUN ps auxf | grep unicorn | grep -v grep

EXPOSE 3000
