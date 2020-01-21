#!/bin/sh

mkdir -p ~/installers

if [ -f ~/installers/sonarqube-7.9.2.zip ]
then
    echo "file already exists"
else
    wget "https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-7.9.2.zip" -P ~/installers    
fi

cd ~/installers

unzip sonarqube-7.9.2.zip

mv sonarqube-7.9.2 ~/apps/sonarqube
