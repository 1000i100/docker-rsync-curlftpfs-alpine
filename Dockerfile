FROM alpine:latest

MAINTAINER 1000i100 <git@1000i100.fr>


RUN apk update \
 && apk upgrade \
 && apk add --no-cache \
            rsync \
            curlftpfs \
            openssh-client \
 && rm -rf /var/cache/apk/*
