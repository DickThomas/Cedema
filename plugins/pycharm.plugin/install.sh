#!/bin/bash
apt install -y default-jdk


CACHEDIR="/var/cache/cedema/pycharm"
FILE=ideaIC.tar.gz

mkdir -p "$CACHEDIR"
cd "$CACHEDIR"
rm $FILE
URL=https://download.jetbrains.com/python/pycharm-community-2016.3.2.tar.gz

wget -c "$URL" -O "$FILE"

if [[ ! -f "$FILE" ]]; then
	exit 1
fi

mkdir -p "/opt/pycharm"
tar -xvf "$FILE" -C "/opt/pycharm"

ln -sf /opt/pycharm/pycharm-community-2016.3.2/bin/pycharm.sh /usr/bin/pycharm

xdg-icon-resource install --novendor --size 256 "/opt/pycharm/pycharm-community-2016.3.2/bin/pycharm.png" "pycharm"
gtk-update-icon-cache -f -t /usr/share/icons/hicolor

cat <<EOF | tee /usr/share/applications/pycharm.desktop
[Desktop Entry]
Name=pycharm Idea
Icon=pycharm
Comment=The Most Intelligent python IDE
Exec=/usr/bin/pycharm
Terminal=false
Type=Application
StartupNotify=true
Categories=Deveopment;Java
Keywords=Java;Scala;Groovy;Deveopment
EOF
