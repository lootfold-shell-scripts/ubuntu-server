#!/bin/bash

mkdir -p ~/installers
mkdir -p ~/sdk/dotnet

if [ -f ~/installers/dotnet-sdk-2.1.607-linux-x64.tar.gz ]
then
    echo 'installer exists'
else
    wget "https://download.visualstudio.microsoft.com/download/pr/39e68289-0364-4173-a12b-c6234e94c527/92f3eb83bfca8b7cd360868996763125/dotnet-sdk-2.1.607-linux-x64.tar.gz" -P ~/installers
fi

tar -xvzf ~/installers/dotnet-sdk-2.1.607-linux-x64.tar.gz -C ~/sdk/dotnet

sudo ln -s ~/sdk/dotnet/dotnet /usr/bin/dotnet

# install most used tools

dotnet tool install --global dotnet-sonarscanner

echo "export DOTNET_ROOT=~/sdk/dotnet" >> ~/.zshrc
echo 'PATH=$PATH:~/.dotnet/tools' >> ~/.zshrc
