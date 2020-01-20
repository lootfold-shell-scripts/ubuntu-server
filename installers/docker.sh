#!/bin/bash

mkdir -p ~/installers

curl -fsSL https://get.docker.com -o ~/installers/get-docker.sh

sudo groupadd docker

sudo usermod -aG docker $USER
