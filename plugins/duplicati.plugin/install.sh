#!/bin/bash
CACHEDIR="/var/cache/cedema/"

cd $CACHEDIR

wget https://updates.duplicati.com/beta/duplicati_2.0.3.3-1_all.deb -O duplicati.deb



dpkg -i duplicati.deb
apt-get --yes --fix-broken install

# https://www.duplicati.com/download
