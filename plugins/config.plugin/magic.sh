#!/bin/bash
##dodgy bash script to add user to adaptigo group
USER=$(zenity --entry --text="Enter your username" --title="enter username for update")
usermod -a -G adaptigo $USER
