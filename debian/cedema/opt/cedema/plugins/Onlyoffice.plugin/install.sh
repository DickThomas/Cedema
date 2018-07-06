#!/bin/bash
cd /tmp

URL="https://download.onlyoffice.com/install/desktop/editors/linux/onlyoffice-desktopeditors_amd64.deb"
wget $URL

apdg -i onlyoffice-desktopeditors_amd64.deb
apt -f install
