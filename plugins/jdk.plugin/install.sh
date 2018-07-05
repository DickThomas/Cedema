#!/bin/bash

CACHEDIR="/var/cache/cedema/jdk"
mkdir -p "$CACHEDIR"
cd "$CACHEDIR"

if [ `uname -m` = "x86_64" ]; then

wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/10.0.1+10/fb4372174a714e6b8c52526dc134031e/jdk-10.0.1_linux-x64_bin.tar.gz

mkdir -p "/opt/jdk"
	tar xvf jdk-8u121-linux-x64.tar.gz -C /opt/jdk/

else
     wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/10.0.1+10/fb4372174a714e6b8c52526dc134031e/jdk-10.0.1_linux-i586_bin.tar.gz
    mkdir -p "/opt/jdk"
    tar xvf jdk-8u121-linux-i586.tar.gz -C /opt/jdk/
fi


update-alternatives --install /usr/bin/java java /opt/jdk/jdk-10.0.1bin/java 1075
update-alternatives --install /usr/bin/javac javac /opt/jdk/jdk10.0.1/bin/javac 1075




## http://stackoverflow.com/questions/10268583/downloading-java-jdk-on-linux-via-wget-is-shown-license-page-instead
##https://www.digitalocean.com/community/tutorials/how-to-manually-install-oracle-java-on-a-debian-or-ubuntu-vps
