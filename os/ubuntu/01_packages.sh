#!/bin/sh

apt update && apt upgrade -y
apt install -y \
  bash \
  curl \
  coreutils \
  git \
  gcc \
  grep \
  iputils-ping \
  iptables \
  make \
  nginx \
  traceroute \
  tcpdump \
  vim \
  wget \
  zip \
  unzip \
  rbenv

apt autoremove -y
