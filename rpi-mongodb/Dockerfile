# Dockerizing MongoDB: Dockerfile for building MongoDB images
# Based on ubuntu:latest, installs MongoDB following the instructions from:
# http://docs.mongodb.org/manual/tutorial/install-mongodb-on-ubuntu/
FROM       philipz/rpi-mongodb
MAINTAINER cretzel

# Installation:
# Import MongoDB public GPG key AND create a MongoDB list file
#RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
#RUN echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | tee /etc/apt/sources.list.d/10gen.list

# Update apt-get sources AND install MongoDB
#RUN apt-get update && apt-get install -y mongodb

RUN rm -v /etc/mongodb.conf
ADD mongodb.conf /etc/
ADD mongodb-start.sh /usr/bin/

# Create the MongoDB data directory
#VOLUME /data/db
#RUN mkdir -p /data/db

# Expose port #27017 from the container to the host
EXPOSE 27017
EXPOSE 28017

# Set /usr/bin/mongod as the dockerized entry-point application
CMD /usr/bin/mongodb-start.sh

