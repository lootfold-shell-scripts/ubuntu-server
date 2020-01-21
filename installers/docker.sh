#!/bin/sh

mkdir -p ~/installers

curl -fsSL https://get.docker.com -o ~/installers/get-docker.sh

sudo sh ~/installers/get-docker.sh

sudo usermod -aG docker $USER
