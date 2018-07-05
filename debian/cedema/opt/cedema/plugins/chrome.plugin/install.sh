#!/bin/bash

echo 'deb https://dl.google.com/linux/chrome/deb/ stable main' > /etc/apt/sources.list.d/google-chrome.list
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
apt update
apt install -y google-chrome-stable
