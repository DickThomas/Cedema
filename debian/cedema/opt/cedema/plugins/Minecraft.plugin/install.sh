#!/bin/bash

CACHEDIR="/var/cache/adaptigo/minecraft"
FILE=minecraft.jar

mkdir -p "$CACHEDIR"
cd "$CACHEDIR"
rm $FILE
URL=https://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.jar


wget -c "$URL" -O "$FILE"

if [[ ! -f "$FILE" ]]; then
	exit 1
fi

mkdir -p "/opt/minecraft"
cp $FILE "/opt/minecraft/"


xdg-icon-resource install --novendor --size 256 "/usr/share/icons/Adwaita/32x32/actions/insert-object.png" "minecraft"
gtk-update-icon-cache -f -t /usr/share/icons/hicolor

cat <<EOF | tee /usr/share/applications/minecraft.desktop
[Desktop Entry]
Name=Minecraft
Icon=minecraft
Comment=Mine to survive
Exec=java -jar /opt/minecraft/minecraft.jar
Terminal=false
Type=Application
StartupNotify=true
Categories=Games;Java
Keywords=Java
EOF
