# docker-register for raspberry pi
# based on https://github.com/jwilder/docker-register
FROM resin/rpi-raspbian
MAINTAINER cretzel

RUN echo foo
RUN apt-get update
RUN apt-get install -y wget python python-pip python-dev libssl-dev libffi-dev

RUN mkdir /app
WORKDIR /app

RUN wget https://github.com/cretzel/docker-gen/releases/download/0.3.3/docker-gen-0.3.3-linux-arm.tar.gz
RUN tar xvzf docker-gen-linux-0.3.3-linux-arm.tar.gz -C /usr/local/bin

RUN apt-get install libffi-dev
RUN pip install python-etcd

ADD . /app

ENV DOCKER_HOST unix:///var/run/docker.sock

#CMD docker-gen -interval 10 -watch -notify "python /tmp/register.py" etcd.tmpl /tmp/register.py

