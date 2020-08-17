FROM ubuntu:16.04

MAINTAINER Alexey Pashinov <pashinov93@gmail.com>

# Install
RUN \
  apt-get update && apt-get install -y \
  build-essential \
  file \
  wget \
  cpio \
  python \
  unzip \
  rsync \
  bc \
  git

# Environment
ENV HOME /home/develop
WORKDIR /home/develop
