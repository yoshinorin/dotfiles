#!/bin/sh

apt update && apt upgrade -y
apt install -y \
  bash \
  curl \
  coreutils
  git \
  grep \
  iprote2 \
  iputils-ping \
  iptables \
  nginx \
  traceroute \
  tcpdump \
  vim \
  wget
  
apt autoremove -y
