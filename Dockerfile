FROM ubuntu:20.04

MAINTAINER Alexey Pashinov <pashinov93@gmail.com>

ENV TZ=Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Install Buildroot requirements
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
  git \
  locales

# Generating locales 
RUN locale-gen en_US.UTF-8

# Environment
ENV HOME /home/develop
WORKDIR /home/develop

ENV FORCE_UNSAFE_CONFIGURE=1
