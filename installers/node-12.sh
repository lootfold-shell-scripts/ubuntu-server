#!/bin/bash

mkdir -p ~/sdk
mkdir -p ~/installers

if [ -f ~/installers/node-v12.14.1-linux-x64.tar.xz ]
then
    echo 'installer exists'
else
    wget "https://nodejs.org/dist/v12.14.1/node-v12.14.1-linux-x64.tar.xz" -P ~/installers
fi

tar -xvJf ~/installers/node-v12.14.1-linux-x64.tar.xz -C ~/sdk

mv ~/sdk/node-v12.14.1-linux-x64 ~/sdk/node

sudo ln -s ~/sdk/node/bin/node /usr/bin/node
sudo ln -s ~/sdk/node/bin/npm /usr/bin/npm
