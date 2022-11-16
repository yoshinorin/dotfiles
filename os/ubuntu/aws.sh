#!/bin/sh

cd ~
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

# https://github.com/remind101/assume-role
## Usage: eval $(assume-role <name>)
wget https://github.com/remind101/assume-role/releases/download/0.3.2/assume-role-Linux
cp ./assume-role-Linux ./assume-role
rm ./assume-role-Linux
chmod +x ./assume-role
