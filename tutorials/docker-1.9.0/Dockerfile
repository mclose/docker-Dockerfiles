FROM ubuntu:vivid

RUN apt-get update && \
    apt-get install -y apt-transport-https

RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D && \
    echo "deb https://apt.dockerproject.org/repo ubuntu-vivid main" > /etc/apt/sources.list.d/docker.list && \
    apt-get update && \
    apt-get install -y docker-engine=1.9.0-0~vivid && \
    rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
