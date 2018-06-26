#!/bin/bash

curl -s https://syncthing.net/release-key.txt | sudo apt-key add -
echo deb http://apt.syncthing.net/ syncthing release | sudo tee /etc/apt/sources.list.d/syncthing-release.list
apt-get update
apt-get install syncthing

#http://apt.syncthing.net/