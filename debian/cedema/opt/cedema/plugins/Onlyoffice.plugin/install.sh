#!/bin/bash
cd /tmp

URL="https://download.onlyoffice.com/install/desktop/editors/linux/onlyoffice-desktopeditors_amd64.deb"
wget $URL

apg install -y onlyoffice-desktopeditors_amd64.deb
apt -f install
