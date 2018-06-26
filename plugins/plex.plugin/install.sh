#!/bin/bash

CACHEDIR="/var/cache/adaptigo/plex"
mkdir -p "$CACHEDIR"
cd "$CACHEDIR"
if [ `uname -m` = "x86_64" ]; then
	ARCH="amd64"
	URL="https://downloads.plex.tv/plex-media-server/1.4.3.3433-03e4cfa35/plexmediaserver_1.4.3.3433-03e4cfa35_amd64.deb"



else
	ARCH="i386"
	URL="https://downloads.plex.tv/plex-media-server/1.4.3.3433-03e4cfa35/plexmediaserver_1.4.3.3433-03e4cfa35_i386.deb"

fi

FILE=${URL##*/}

wget -c "$URL" -O "$FILE"

if [[ ! -f "$FILE" ]]; then
	exit 1
fi

dpkg -i $FILE
apt-get -f install
