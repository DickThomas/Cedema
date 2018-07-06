#!/bin/bash

GITHUB_RELEASES_URL="https://api.github.com/repos/saenzramiro/rambox/releases"
GITHUB_DOWNLOAD_URL="https://github.com/saenzramiro/rambox/releases/download"

KERNEL=$(uname -m)

case "$KERNEL" in
  "x86_64") KERNEL_VERSION="x64" ;;
  *) KERNEL_VERSION="ia32" ;;
esac

wget https://github.com/saenzramiro/rambox/releases/download/0.5.17/Rambox_0.5.17-x64.deb

dpkg -i Rambox_0.5.17-x64.deb
apt -f -y install
