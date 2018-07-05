#!/bin/bash
rm -Rf "/opt/jdk/"

update-alternatives --remove java /usr/java/latest/bin/java
update-alternatives --auto java
