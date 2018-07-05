#!/bin/bash

CACHEDIR="/var/cache/adaptigo/intellij"
FILE=ideaIC.tar.gz

mkdir -p "$CACHEDIR"
cd "$CACHEDIR"
rm $FILE
URL=https://download.jetbrains.com/idea/ideaIC-2018.1.5.tar.gz
FILE=ideaIC.tar.gz

wget -c "$URL" -O "$FILE"

if [[ ! -f "$FILE" ]]; then
	exit 1
fi
rmdir -Rfv "/opt/intellij"
mkdir -p "/opt/intellij"

tar -xvf "$FILE" -C "/opt/intellij"

ln -sf /opt/intellij/idea-IC-181.5281.24/bin/idea.sh /usr/bin/intellij

xdg-icon-resource install --novendor --size 256 "/opt/intellij/idea-IC-181.5281.24/bin/idea.png" "intellij"
gtk-update-icon-cache -f -t /usr/share/icons/hicolor

cat <<EOF | tee /usr/share/applications/intellij.desktop
[Desktop Entry]
Name=intellij Idea
Icon=intellij
Comment=The Most Intelligent Java IDE
Exec=/usr/bin/intellij
Terminal=false
Type=Application
StartupNotify=true
Categories=Deveopment;Java
Keywords=Java;Scala;Groovy;Deveopment
EOF
