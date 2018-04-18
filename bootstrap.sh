#!/bin/bash

if [ ! -f ./_code/dropbox.tar.gz ]; then
    echo "Downloading dropbox"
    wget https://www.dropbox.com/download?plat=lnx.x86_64 -O ./_code/dropbox.tar.gz
else
    echo "Dropbox already downloaded, continuing with docker-compose"
fi

sudo docker-compose build
sudo docker-compose up -d