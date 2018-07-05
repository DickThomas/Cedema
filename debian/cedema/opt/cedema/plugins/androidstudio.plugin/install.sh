#!/bin/bash
if [ `uname -m` = "x86_64" ]; then
		dpkg --add-architecture i386
		apt update
		apt -y install libstdc++6:i386 libgcc1:i386 zlib1g:i386 libncurses5:i386
	else
		echo "i386"
		apt update
		apt -y install libstdc++6 libgcc1 zlib1g libncurses5
fi

CACHEDIR="/var/cache/debi/android";

mkdir -p "$CACHEDIR"
cd "$CACHEDIR"

URL=$(wget "http://developer.android.com/sdk/index.html" -O - | grep -o "https://dl.google.com/.*/[0-9.]*/android-studio-ide-[0-9.]*-linux.zip" | head -n 1)
FILE=${URL##*/}

wget -c "$URL" -O "$FILE"

rm -rf "/opt/android-studio"
unzip -xq "$FILE" -d "/opt/"

ln -sf "/opt/android-studio/bin/studio.sh" "/usr/bin/android-studio"

xdg-icon-resource install --novendor --size "scalable" "/opt/android-studio/bin/androidstudio.svg" "androidstudio"
gtk-update-icon-cache -f -t /usr/share/icons/hicolor

cat <<EOF | tee /usr/share/applications/androidstudio.desktop
[Desktop Entry]
Name=Android Studio
Icon=androidstudio
Comment=Official IDE for Android application development
Exec=android-studio
Terminal=false
Type=Application
StartupNotify=true
Categories=IDE;Development;
Keywords=Idea;Java;Android;SDK;IDE;
EOF
