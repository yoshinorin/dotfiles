#!/bin/sh

sudo apt install ruby-bundler

git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
git -C "$(rbenv root)"/plugins/ruby-build pull

rbenv init
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/main/bin/rbenv-doctor | bash
sudo rbenv install 2.6.8
rbenv global 2.6.8
rbenv rehash
