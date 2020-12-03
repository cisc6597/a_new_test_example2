FROM alpine:3.10

RUN apk update && \
    apk upgrade && \
    apk add --no-cache build-base gdb

ENV CC=gcc
ENV CXX=g++

COPY . /tests
WORKDIR /tests

RUN ls
RUN ls bin


ENTRYPOINT [ "make", "test" ]
