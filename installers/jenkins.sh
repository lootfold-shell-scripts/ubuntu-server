#!/bin/sh

mkdir -p ~/apps/jenkins

if [ -f ~/apps/jenkins/jenkins.war ]
then
    echo "File already exists"
else
    wget "http://ftp-nyc.osuosl.org/pub/jenkins/war-stable/2.204.1/jenkins.war" -P ~/apps/jenkins/
fi
