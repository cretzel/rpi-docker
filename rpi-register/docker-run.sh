#!/bin/sh
#docker run -d -e HOST_IP=1.2.3.4 -e ETCD_HOST=1.2.3.4:4001 -v /var/run/docker.sock:/var/run/docker.sock -t cretzel/rpi-register
docker run --net host -e ETCD_HOST=localhost:4001 -v /var/run/docker.sock:/var/run/docker.sock -i -t cretzel/rpi-register /bin/bash
