FROM cretzel/rpi-golang
MAINTAINER cretzel	
RUN go get github.com/coreos/etcd
EXPOSE 4001
CMD /home/go/bin/etcd -l=":4001"

