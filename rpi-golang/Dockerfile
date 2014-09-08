FROM resin/rpi-raspbian
MAINTAINER cretzel	
RUN apt-get update -q
RUN apt-get install -qy build-essential curl git
RUN curl -s https://storage.googleapis.com/golang/go1.3.1.src.tar.gz | tar -v -C /usr/local -xz
RUN cd /usr/local/go/src && ./make.bash 2>&1 || true

RUN mkdir /home/go
ENV GOPATH /home/go
ENV GOROOT /usr/local/go
ENV PATH /usr/local/go/bin:$PATH
