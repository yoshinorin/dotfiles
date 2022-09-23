#!/bin/sh

# curl -L https://raw.githubusercontent.com/yoshinorin/dotfiles/master/wsl-setup.sh > wsl-setup.sh

apt update && apt upgrade -y
apt install -y \
  bash \
  curl \
  coreutils
  git \
  gcc \
  grep \
  iprote2 \
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

# Install Scala & sbt
curl -s "https://get.sdkman.io?rcupdate=false" | bash && source "$HOME/.sdkman/bin/sdkman-init.sh" && sdk install java 11.0.11.hs-adpt && sdk install scala 2.13.4 && sdk install sbt
echo 'source "$HOME/.sdkman/bin/sdkman-init.sh"' >> ~/.bash_profile

# Node
git clone https://github.com/nodenv/nodenv.git ~/.nodenv
cd ~/.nodenv && src/configure && make -C src
echo 'export PATH="$HOME/.nodenv/bin:$PATH"' >> ~/.bash_profile
~/.nodenv/bin/nodenv init

source ~/.bash_profile

curl -fsSL https://github.com/nodenv/nodenv-installer/raw/master/bin/nodenv-doctor | bash

mkdir -p "$(nodenv root)"/plugins
git clone https://github.com/nodenv/node-build.git "$(nodenv root)"/plugins/node-build

nodenv install 16.8.0
source ~/.bash_profile
nodenv global 16.8.0

# Ruby
rbenv init
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/main/bin/rbenv-doctor | bash
rbenv install .4.12

# Clean up
apt autoremove -y
