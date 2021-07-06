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
  wget \
  zip \
  unzip

# Install Scala & sbt
curl -s "https://get.sdkman.io?rcupdate=false" | bash && source "$HOME/.sdkman/bin/sdkman-init.sh" && sdk install java 11.0.11.hs-adpt && sdk install scala 2.13.4 && sdk install sbt

apt autoremove -y
