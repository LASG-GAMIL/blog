FROM ruby:2-slim

RUN apt-get update && \
    apt-get install -y build-essential git-core nodejs && \
    gem install bundler

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
