# Mongodb for raspberry pi
# http://docs.mongodb.org/manual/tutorial/install-mongodb-on-ubuntu/
FROM       philipz/rpi-mongodb
MAINTAINER cretzel

# Add conf and start script
RUN rm -v /etc/mongodb.conf
ADD mongodb.conf /etc/
ADD mongodb-start.sh /usr/bin/

# Expose port 27017 and 28017 from the container to the host
EXPOSE 27017
#EXPOSE 28017

# Run mongodb
CMD /usr/bin/mongodb-start.sh

