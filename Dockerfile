FROM ubuntu:14.04
MAINTAINER Kazuya Yokogawa "yokogawa-k@klab.ocm"

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update \
    && apt-get -y install \
    nodejs-legacy \
    npm \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists

RUN npm install ttyrec ttycast
ENV PATH /node_modules/.bin/:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
WORKDIR /work
CMD mkfifo -m 666 /work/ttycast && ttyplay -n /work/ttycast | ttycast -s 200x40; rm /work/ttycast

