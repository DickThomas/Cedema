#!/bin/bash

URL="https://download.onlyoffice.com/install/desktop/editors/linux/onlyoffice-desktopeditors_amd64.deb"
wget $URL -o onlyoffice.deb

apt install -y onlyoffice.deb
apt -f install
