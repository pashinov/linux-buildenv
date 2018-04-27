# Pull base image
FROM ubuntu:16.04

MAINTAINER Alexey Pashinov <pashinov@outlook.com>

# Install
RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y file && \
  apt-get install -y wget && \
  apt-get install -y cpio && \
  apt-get install -y python && \
  apt-get install -y unzip && \
  apt-get install -y rsync && \
  apt-get install -y bc && \
  apt-get install -y git

# Environment
ENV HOME /home/develop
WORKDIR /home/develop
