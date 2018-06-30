#!/bin/bash

CACHEDIR="/var/cache/adaptigo/atom"
cd $CACHEDIR
if [ `uname -m` = "x86_64" ]; then
	ARCH="amd64"
	mkdir -p "$CACHEDIR"
	cd "$CACHEDIR"

	URL="https://atom.io/download/deb"
	FILE=${URL##*/}

	wget -c "$URL" -O "$FILE"

	if [ ! -f "$FILE" ]; then
		exit 1
	fi

	dpkg -i $FILE


else
	ARCH="i386"
fi
apt -f install
