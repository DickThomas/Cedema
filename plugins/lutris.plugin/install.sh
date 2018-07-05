#!/bin/bash

echo "deb http://download.opensuse.org/repositories/home:/strycore/Debian_9.0/ ./" |  tee /etc/apt/sources.list.d/lutris.list
wget -q http://download.opensuse.org/repositories/home:/strycore/Debian_9.0/Release.key -O- | apt-key add -

apt-get update
apt-get install -y lutris
