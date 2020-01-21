#!/bin/sh

mkdir -p ~/installers

if [ -f sonar-scanner-cli-4.2.0.1873-linux.zip ]
then
    echo 'installer exists'
else
    wget 'https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.2.0.1873-linux.zip' -P ~/installers
fi


cd ~/installers
unzip sonar-scanner-cli-4.2.0.1873-linux.zip

mv sonar-scanner-4.2.0.1873-linux ~/apps/sonar-scanner

sudo ln -s ln -s ~/apps/sonar-scanner/bin/sonar-scanner /usr/bin/sonar-scanner
