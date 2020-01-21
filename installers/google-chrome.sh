#!/bin/sh

mkdir -p ~/installers

if [ -f ~/installers/google-chrome-stable_current_amd64.deb]
then
    echo 'installer exists'
else
    wget "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb" -P ~/installers
fi

sudo dpkg -i ~/installers/google-chrome-stable_current_amd64.deb
