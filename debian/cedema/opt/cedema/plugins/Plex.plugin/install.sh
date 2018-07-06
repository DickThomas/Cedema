#!/bin/bash

CACHEDIR="/var/cache/adaptigo/plex"
mkdir -p "$CACHEDIR"
cd "$CACHEDIR"
if [ `uname -m` = "x86_64" ]; then
	ARCH="amd64"
	URL="https://downloads.plex.tv/plex-media-server/1.13.2.5154-fd05be322/plexmediaserver_1.13.2.5154-fd05be322_amd64.deb"



else
	ARCH="i386"
	URL="https://downloads.plex.tv/plex-media-server/1.13.2.5154-fd05be322/plexmediaserver_1.13.2.5154-fd05be322_i386.deb"

fi

FILE=${URL##*/}

wget -c "$URL" -O "$FILE"

if [[ ! -f "$FILE" ]]; then
	exit 1
fi

dpkg -i $FILE
apt-get -f install
