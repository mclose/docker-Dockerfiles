FROM alpine:latest
MAINTAINER Matthew Close <matthew.close@ctl.io>

# add an alias to .bash_profile or .bashrc to use
# alias dxml2json='docker run -i --rm mclose/xml2json'

RUN apk --update add nodejs && rm /var/cache/apk/*
RUN npm install -g xml2json-command

ENTRYPOINT ["/usr/bin/xml2json"]
