#!/bin/sh

# Node
git clone https://github.com/nodenv/nodenv.git ~/.nodenv
cd ~/.nodenv && src/configure && make -C src
echo 'export PATH="$HOME/.nodenv/bin:$PATH"' >> ~/.bashrc
~/.nodenv/bin/nodenv init

source ~/.bash_profile

curl -fsSL https://github.com/nodenv/nodenv-installer/raw/master/bin/nodenv-doctor | bash

mkdir -p "$(nodenv root)"/plugins
git clone https://github.com/nodenv/node-build.git "$(nodenv root)"/plugins/node-build

nodenv install 16.18.1
source ~/.bash_profile
nodenv global 16.18.1
