# etcd (https://github.com/coreos/etcd/) for raspberry pi
FROM resin/rpi-raspbian
MAINTAINER cretzel	

# Install nginx
RUN apt-get update && apt-get install -y nginx
ADD etc /etc

VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/sites-available", "/etc/nginx/certs", "/etc/nginx/conf.d", "/var/log/nginx", "/usr/share/nginx]

# Expose port 80
EXPOSE 80
EXPOSE 443

# Run etcd
CMD nginx

