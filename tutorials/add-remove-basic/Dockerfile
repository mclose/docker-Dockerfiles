FROM ubuntu:vivid
COPY ./toberemoved.txt /toberemoved.txt
RUN rm -rf /toberemoved.txt
CMD ["/bin/ls", "/"]
