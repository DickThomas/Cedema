#!/bin/bash

CACHEDIR="/var/cache/adaptigo/jdk"
mkdir -p "$CACHEDIR"
cd "$CACHEDIR"

if [ `uname -m` = "x86_64" ]; then

 wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie"  wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u121-b13/e9e7ea248e2c4826b92b3f075a80e441/jdk-8u121-linux-x64.tar.gz
 mkdir -p "/opt/jdk"
	tar xvf jdk-8u121-linux-x64.tar.gz -C /opt/jdk/

else
 wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie"  wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u121-b13/e9e7ea248e2c4826b92b3f075a80e441/jdk-8u121-linux-i586.tar.gz
 mkdir -p "/opt/jdk"
	tar xvf jdk-8u121-linux-i586.tar.gz -C /opt/jdk/
fi


update-alternatives --install /usr/bin/java java /opt/jdk/jdk1.8.0_121/bin/java 1075
update-alternatives --install /usr/bin/javac javac /opt/jdk/jdk1.8.0_121/bin/javac 1075




## http://stackoverflow.com/questions/10268583/downloading-java-jdk-on-linux-via-wget-is-shown-license-page-instead
##https://www.digitalocean.com/community/tutorials/how-to-manually-install-oracle-java-on-a-debian-or-ubuntu-vps
