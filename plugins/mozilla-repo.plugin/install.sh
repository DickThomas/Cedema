#!/bin/bash

echo 'deb http://mozilla.debian.net/ jessie-backports firefox-release' >> /etc/apt/sources.list
wget -q http://mozilla.debian.net/archive.asc -O- | sudo apt-key add -
apt-get update
touch /etc/apt/sources.mozilla