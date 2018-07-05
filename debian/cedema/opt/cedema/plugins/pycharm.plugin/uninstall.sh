#!/bin/bash

xdg-icon-resource uninstall --novendor --size 256 "pycharm"

gtk-update-icon-cache -f -t /usr/share/icons/hicolor

rm -f "/usr/bin/pycharm"
rm -f "/usr/share/applications/pycharm.desktop"
rm -rf "/opt/pycharm"
