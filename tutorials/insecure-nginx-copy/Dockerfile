FROM ubuntu:vivid

MAINTAINER Matthew Close "https://github.com/mclose"

RUN apt-get update && apt-get -y upgrade

# install nginx and a fake certificate file 
RUN apt-get -y install nginx && apt-get clean

# Leave nginx running in the foreground to prevent continer from exiting
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

COPY ./nginx.conf /etc/nginx/conf.d/example.conf
COPY ./nginx.key /etc/nginx/ssl/nginx.key
COPY ./nginx.crt /etc/nginx/ssl/nginx.crt
CMD ["nginx"]
