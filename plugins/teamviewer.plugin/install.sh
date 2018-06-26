#!/bin/bash

if [ `uname -m` = "x86_64" ]; then
 	dpkg --add-architecture i386
fi
wget https://download.teamviewer.com/download/teamviewer_i386.deb
dpkg -i teamviewer_i386.deb
apt-get --yes --fix-broken install
