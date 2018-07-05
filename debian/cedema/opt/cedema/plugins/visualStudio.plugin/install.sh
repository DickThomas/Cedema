#!/bin/bash
CACHEDIR="/var/cache/adaptigo/VSCode"

cd $CACHEDIR
if [ `uname -m` = "x86_64" ]; then

  # 64-bit stuff here
    wget https://go.microsoft.com/fwlink/?LinkID=760868 -O VSCode-Linux.deb

else
   # 32-bit stuff here
     	wget https://go.microsoft.com/fwlink/?LinkID=760680 -O VSCode-Linux.deb

fi

dpkg -i VSCode-Linux.deb
apt-get --yes --fix-broken install


# https://code.visualstudio.com/
