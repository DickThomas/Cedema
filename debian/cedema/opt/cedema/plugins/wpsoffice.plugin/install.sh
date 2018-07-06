#!/bin/bash
##http://wps-community.org/downloads


aptitude install -y curl
if [ `uname -m` = "x86_64" ]; then
  # 64-bit stuff here
  curl http://kdl1.cache.wps.com/ksodl/download/linux/a21//wps-office_10.1.0.5707~a21_amd64.deb -o wps-office.deb

else
   # 32-bit stuff here
  curl http://kdl1.cache.wps.com/ksodl/download/linux/a21//wps-office_10.1.0.5707~a21_i386.deb -o wps-office.deb
fi

dpkg -i wps-office.deb
apt --yes --fix-broken install


### installed version!
###WPS Office for Linux Alpha21
## http://wps-community.org/downloads
