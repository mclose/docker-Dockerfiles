FROM alpine:latest
MAINTAINER Matthew Close <matthew.close@ctl.io>

RUN apk --update add ruby-dev ca-certificates && rm /var/cache/apk/*
RUN gem install --no-rdoc --no-ri docker-api sinatra
COPY ./docker-version.rb /usr/src/app/docker-version.rb

ENTRYPOINT ["/usr/src/app/docker-version.rb"]
