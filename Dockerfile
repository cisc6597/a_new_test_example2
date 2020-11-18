FROM alpine:3.12

RUN apk update && \
    apk upgrade && \
    apk add --no-cache build-base gdb

ENV CC=gcc
ENV CXX=g++

COPY . /lab
WORKDIR /lab

ENTRYPOINT [ "make", "test" ]
