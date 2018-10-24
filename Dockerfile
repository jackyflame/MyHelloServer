FROM golang:latest

#FROM centos:7
MAINTAINER jackyflame <yh16266@126.com>

# install gcc
# -y means saying yes to all questions
#RUN yum install -y gcc

# install golang
#RUN yum install -y go



WORKDIR $GOPATH/src/jackyflame/MyHelloServer
COPY . $GOPATH/src/jackyflame/MyHelloServer

RUN go build .

EXPOSE 8080

ENTRYPOINT ["./MyHelloServer"]
