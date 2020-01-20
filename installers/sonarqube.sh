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

# install sonar scanner
wget 'https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.2.0.1873-linux.zip' -P ~/installers

unzip sonar-scanner-cli-4.2.0.1873-linux.zip

mv sonar-scanner-cli-4.2.0.1873-linux ~/apps/sonar-scanner

sudo ln -s ln -s ~/apps/sonar-scanner/bin/sonar-scanner /usr/bin/sonar-scanner
