#!/bin/bash

apt update
apt install -y wget
cd /mnt/server

rm Cuberite.tar.gz
wget https://builds.cuberite.org/job/Cuberite%20Linux%20x64%20Master/lastSuccessfulBuild/artifact/Cuberite.tar.gz
tar -xf Cuberite.tar.gz

cp /mnt/server/server-builder-playground-egg/settings.ini .
cp /mnt/server/server-builder-playground-egg/webadmin.ini .
cp /mnt/server/server-builder-playground-egg/world/world.ini world/world.ini
