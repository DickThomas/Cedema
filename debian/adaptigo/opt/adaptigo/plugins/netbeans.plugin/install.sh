#!/bin/bash

CACHEDIR="/var/cache/adaptigo/netbeans"


mkdir -p "$CACHEDIR"
cd "$CACHEDIR"

URL=http://download.netbeans.org/netbeans/8.2/final/bundles/netbeans-8.2-linux.sh

wget -c "$URL"

chmod +x netbeans-8.0.2-linux.sh

timeout 5m bash ./netbeans-8.0.2-linux.sh --silent "-J-Dnb-base.installation.location=/opt/netbeans"

ln -sf /opt/netbeans/bin/netbeans /usr/bin/netbeans

xdg-icon-resource install --novendor --size 256 "/usr/share/icons/Adwaita/256x256/apps/preferences-desktop-display.png" "netbeans"
gtk-update-icon-cache -f -t /usr/share/icons/hicolor

cat <<EOF | tee /usr/share/applications/netbeans.desktop
[Desktop Entry]
Name=netbeans
Icon=netbeans
Comment= something
Exec=/usr/bin/netbeans
Terminal=false
Type=Application
StartupNotify=true
Categories=Deveopment;Java
Keywords=Java;Scala;Groovy;Deveopment
EOF

gtk-update-icon-cache -f -t /usr/share/icons/hicolor
