FROM alpine:3.10

RUN apk update && \
    apk upgrade && \
    apk add --no-cache build-base gdb

ENV CC=gcc
ENV CXX=g++

COPY . /main
WORKDIR /main




ENTRYPOINT [ "make", "test" ]
