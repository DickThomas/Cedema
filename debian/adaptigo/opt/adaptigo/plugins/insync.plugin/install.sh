#!/bin/bash

wget -qO - https://d2t3ff60b2tol4.cloudfront.net/services@insynchq.com.gpg.key | sudo apt-key add -

apt-add-repository "deb http://apt.insynchq.com/debian jessie non-free contrib"
apt update
apt install -y insync 
