#!/bin/bash

xdg-icon-resource uninstall --novendor --size 256 "androidstudio"

gtk-update-icon-cache -f -t /usr/share/icons/hicolor

rm -f "/usr/share/applications/androidstudio.desktop"
rm -rf "/opt/android-studio"
