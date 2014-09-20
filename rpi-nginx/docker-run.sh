#!/bin/bash
docker run -d -p 80:80 -v /home/pi/docker/data/rpi-nginx/html:/usr/share/nginx/html --name rpi-nginx cretzel/rpi-nginx

