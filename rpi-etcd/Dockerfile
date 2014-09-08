# etcd (https://github.com/coreos/etcd/) for raspberry pi
FROM cretzel/rpi-golang
MAINTAINER cretzel	

# Install etcd
RUN go get github.com/coreos/etcd

# Expose default etcd port 4001
EXPOSE 4001

# Run etcd
CMD /home/go/bin/etcd -l=":4001"

