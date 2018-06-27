#!/bin/bash

# Instructions adopted from
# https://github.com/brave/browser-laptop/blob/master/docs/linuxInstall.md#fedora-x86_64

curl https://s3-us-west-2.amazonaws.com/brave-apt/keys.asc | sudo apt-key add -
echo "deb [arch=amd64] https://s3-us-west-2.amazonaws.com/brave-apt `lsb_release -sc` main" | sudo tee -a /etc/apt/sources.list.d/brave-`lsb_release -sc`.list

apt update
apt install -y brave
