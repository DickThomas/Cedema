#!/bin/bash
aptitude install -y curl
if [ `uname -m` = "x86_64" ]; then

  # 64-bit stuff here
    curl https://downloads.vivaldi.com/stable/vivaldi-stable_1.15.1147.52-1_amd64.deb -o vivaldi.deb

else
   # 32-bit stuff here
   curl https://downloads.vivaldi.com/stable/vivaldi-stable_1.15.1147.52-1_i386.deb -o  vivaldi.deb

fi

dpkg -i vivaldi.deb
apt-get --yes --fix-broken install


#Vivaldi.com
