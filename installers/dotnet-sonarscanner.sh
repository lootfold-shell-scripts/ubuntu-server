#!/bin/sh

dotnet tool install --global dotnet-sonarscanner

sudo ln -s ~/.dotnet/tools/dotnet-sonarscanner /usr/bin/dotnet-sonarscanner
