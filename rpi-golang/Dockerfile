# Dockerized go (http://golang.org/) environment for raspberry pi
FROM resin/rpi-raspbian
MAINTAINER cretzel	

# Get build tools and sources 
RUN apt-get update -q
RUN apt-get install -qy build-essential curl git
RUN curl -s https://storage.googleapis.com/golang/go1.3.1.src.tar.gz | tar -v -C /usr/local -xz

# Run build
RUN cd /usr/local/go/src && ./make.bash 2>&1 || true

# Create directories and environment variables
RUN mkdir /home/go
ENV GOPATH /home/go
ENV GOROOT /usr/local/go
ENV PATH /usr/local/go/bin:$PATH
