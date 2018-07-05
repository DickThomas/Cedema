#!/bin/bash

if [ `uname -m` = "x86_64" ]; then
 	wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
fi
if [ `uname -m` = "x86" ]; then
 	wget https://download.teamviewer.com/download/linux/teamviewer_i386.deb
fi
dpkg -i teamviewer_i386.deb
dpkg -i teamviewer_amd64.deb
apt --yes --fix-broken install
