FROM alpine:latest

MAINTAINER Matthew Close <matthew.close@ctl.io>
# running
# docker run -i -v /var/run/docker.sock:/var/run/docker.sock -v /usr/local/bin/docker:/usr/local/bin/docker mclose/did

ENTRYPOINT ["/usr/local/bin/docker"]
CMD ["-v"]
