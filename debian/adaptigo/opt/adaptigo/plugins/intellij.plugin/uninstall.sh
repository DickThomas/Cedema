#!/bin/bash

xdg-icon-resource uninstall --novendor --size 256 "intellij"

gtk-update-icon-cache -f -t /usr/share/icons/hicolor

rm -f "/usr/bin/intellij"
rm -f "/usr/share/applications/intellij.desktop"
rm -rf "/opt/intellij"
