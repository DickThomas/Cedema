#!/bin/bash
CACHEDIR="/var/cache/debi/jdk"
mkdir -p "$CACHEDIR"
cd "$CACHEDIR"

wget https://github.com/snwh/paper-gtk-theme/archive/master.zip
unzip master.zip

cd paper-gtk-theme-master/
cp Paper /usr/share/themes/ -Rfv

cd ..
rm paper-gtk-theme-master -Rfv


####http://snwh.org/paper/download/