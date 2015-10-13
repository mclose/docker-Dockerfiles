FROM ubuntu:vivid

MAINTAINER Matthew Close "https://github.com/mclose"

RUN apt-get update && apt-get -y upgrade

# install nginx and a fake certificate file 
RUN apt-get -y install nginx && apt-get clean

# Leave nginx running in the foreground to prevent continer from exiting
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# Add an environment variable
ENV MYSECRET secret

RUN mkdir /etc/nginx/ssl
COPY ./nginx.conf /etc/nginx/conf.d/example.conf
CMD ["nginx"]
