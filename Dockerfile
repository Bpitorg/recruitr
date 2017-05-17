FROM ubuntu:16.04
LABEL MAINTAINER rsetti@yahoo-inc.com

RUN apt-get update && apt-get -y upgrade

RUN apt-get install -y default-jdk
RUN apt-get install -y g++
RUN apt-get install -y gcc
RUN apt-get install -y haskell-platform
RUN apt-get install -y nodejs
RUN apt-get install -y perl
RUN apt-get install -y python3
RUN apt-get install -y scala
RUN apt-get install -y ruby
RUN apt-get install -y php

COPY container-utils/run-* /usr/bin/
RUN chmod +x /usr/bin/run-*

RUN mkdir /workspace

WORKDIR /workspace