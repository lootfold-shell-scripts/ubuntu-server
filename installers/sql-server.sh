#!/bin/sh

docker pull mcr.microsoft.com/mssql/server:2019-GA-ubuntu-16.04

docker run -e "ACCEPT_EULA=Y" \
       -e "SA_PASSWORD=SqlServer2019" \
       -p 1433:1433 --name sqlServer \
       -d mcr.microsoft.com/mssql/server:2019-GA-ubuntu-16.04
