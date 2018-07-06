#!/bin/bash

CACHEDIR="/var/cache/cedema/firefox-developer"
FILE="firefox-developer.tar.bz2"
URL="https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=en-US"
DIR="/opt/firefox-developer"

[[ -d $CACHEDIR ]] || mkdir -p $CACHEDIR
[[ -f "$CACHEDIR/$FILE" ]] || wget -c "$URL" -O "$CACHEDIR/$FILE"

tar jxf "$CACHEDIR/$FILE" -C "/opt"


cat > /usr/share/applications/firefox-developer.desktop <<EOL
[Desktop Entry]
Version=1.0
Encoding=UTF-8
Name=Firefox Developer Edition
Comment=Firefox Developer Edition
Exec=/opt/firefox/firefox
Icon=/opt/firefox/browser/icons/mozicon128.png
Type=Application
StartupNotify=true
Keywords=firefox;dev;browser
Categories=Internet
EOL
