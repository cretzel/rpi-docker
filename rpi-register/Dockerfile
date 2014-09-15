# docker-register for raspberry pi
# based on https://github.com/jwilder/docker-register
FROM resin/rpi-raspbian
MAINTAINER cretzel

RUN apt-get update
RUN apt-get install -y curl wget python python-pip python-dev libssl-dev libffi-dev
RUN pip install python-etcd

RUN mkdir /app
WORKDIR /app

RUN wget https://github.com/cretzel/docker-gen/releases/download/0.3.3/docker-gen-linux-arm-0.3.3.tar.gz
RUN tar xvzf docker-gen-linux-arm-0.3.3.tar.gz -C /usr/local/bin

ADD ./app /app

ENV DOCKER_HOST unix:///var/run/docker.sock

CMD /usr/local/bin/docker-gen -interval 10 -watch -notify "python /tmp/register.py" etcd-single-address.tmpl /tmp/register.py

