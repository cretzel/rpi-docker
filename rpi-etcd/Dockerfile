# etcd (https://github.com/coreos/etcd/) for raspberry pi
FROM cretzel/rpi-golang
MAINTAINER cretzel	

# Install etcd
WORKDIR /home/go
RUN mkdir bin
RUN mkdir src
RUN curl -L -s https://github.com/coreos/etcd/archive/v0.4.6.tar.gz | tar -v -C /home/go/src -zx
WORKDIR src/etcd-0.4.6
RUN ./build
RUN cp bin/etcd /home/go/bin/

# Expose default etcd port 4001
EXPOSE 4001

# Run etcd
CMD /home/go/bin/etcd

