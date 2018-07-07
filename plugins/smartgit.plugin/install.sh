#!/bin/bash

apt install -y default-jdk

CACHEDIR="/var/cache/cedema";
mkdir -p "$CACHEDIR"
cd "$CACHEDIR"


wget https://www.syntevo.com/downloads/smartgit/smartgit-18_1_3.deb
dpkg -i smartgit-18_1_3.deb
apt -f install

## https://www.syntevo.com/smartgit/download/
