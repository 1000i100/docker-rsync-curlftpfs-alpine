FROM alpine:edge

MAINTAINER 1000i100 <git@1000i100.fr>


RUN echo http://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories \
 && apk update \
 && apk upgrade \
 && apk add --no-cache \
            rsync \
            curlftpfs \
            openssh-client \
 && rm -rf /var/cache/apk/*
