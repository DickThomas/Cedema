#!/bin/bash

xdg-icon-resource uninstall --novendor --size 256 "minecraft"

gtk-update-icon-cache -f -t /usr/share/icons/hicolor

rm -f "/usr/share/applications/minecraft.desktop"
rm -rf "/opt/minecraft"
