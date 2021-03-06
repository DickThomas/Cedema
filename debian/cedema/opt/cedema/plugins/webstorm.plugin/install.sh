#!/bin/bash

apt install -y default-jdk

CACHEDIR="/var/cache/adaptigo/webstorm";
mkdir -p "$CACHEDIR"
cd "$CACHEDIR"

URL=$(wget "https://data.services.jetbrains.com/products/releases?code=WS&latest=true" -O - | grep -o "https://download.jetbrains.com/webstorm/WebStorm-[0-9a-z.]*.tar.gz" | head -n 1)
FILE=${URL##*/}

wget -c "$URL" -O "$FILE"

if [[ ! -f "$FILE" ]]; then
	exit 1
fi

tar -xzf "$FILE" -C "/opt/"

mv /opt/WebStorm* "/opt/WebStorm"
ln -sf "/opt/WebStorm/bin/webstorm.sh" "/usr/bin/webstorm"

xdg-icon-resource install --novendor --size 128 "/opt/WebStorm/bin/webide.png" "webstorm"
gtk-update-icon-cache -f -t /usr/share/icons/hicolor

cat <<EOF | tee /usr/share/applications/webstorm.desktop
[Desktop Entry]
Name=WebStorm
Icon=webstorm
Comment=The Smartest JavaScript IDE
Exec=webstorm
Terminal=false
Type=Application
StartupNotify=true
Categories=IDE;Development;
Keywords=Jetbrains;HTML;JavaScript;CSS;IDE;
EOF
