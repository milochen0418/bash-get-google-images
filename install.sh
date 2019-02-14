#!/bin/bash

CURDIR=$(pwd)
BACKDIR=""
rm -f /tmp/curdir.txt
echo $CURDIR > /tmp/curdir.txt

#Install procedure
mkdir -p ~/pyapp
cd ~/pyapp
git clone https://github.com/hardikvasa/google-images-download.git
cd google-images-download
sudo python setup.py install
cd ~/pyapp/google-images-download
wget https://chromedriver.storage.googleapis.com/2.41/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
sudo cp chromedriver /usr/local/bin/


BACKDIR=$(cat /tmp/curdir.txt)
cd $BACKDIR
