#!/bin/bash

curl -s http://repo.sinew.in/keys/enpass-linux.key | sudo apt-key add -
echo "deb http://repo.sinew.in/ stable main" | sudo tee /etc/apt/sources.list.d/enpass.list
apt update
apt install -y enpass
