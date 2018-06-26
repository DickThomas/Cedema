#!/bin/bash

echo 'deb http://dl.google.com/linux/talkplugin/deb/ stable main' > /etc/apt/sources.list.d/google-talkplugin.list
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
aptitude update
aptitude install -y google-talkplugin