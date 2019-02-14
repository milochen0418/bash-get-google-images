#!/bin/bash

CURDIR=$(pwd)
BACKDIR=""
rm -f /tmp/curdir.txt
echo $CURDIR > /tmp/curdir.txt

#Precondition check for installation
if ! dpkg -l google-chrome-stable ; then 
	echo "Please call `sudo ./install-google-chrome-stable.sh` to install chrome"
	BACKDIR=$(cat /tmp/curdir.txt) 
	cd $BACKDIR
	exit 1
fi

#Install procedure
sudo apt-get install unzip wget git # unzip tool to unzup file  when wget
sudo apt-get install python-setuptools # for installation in google-images-download.git
sudo apt-get install graphicsmagick-imagemagick-compat  # for using identify command to check correctness of picture
mkdir -p ~/pyapp
cd ~/pyapp
git clone https://github.com/hardikvasa/google-images-download.git
cd google-images-download
sudo python setup.py install
cd ~/pyapp/google-images-download
wget https://chromedriver.storage.googleapis.com/2.41/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
sudo cp chromedriver /usr/local/bin/

#sudo cp get-google-images.sh /usr/local/bin/

BACKDIR=$(cat /tmp/curdir.txt) 
cd $BACKDIR

sudo cp get-google-images.sh /usr/local/bin/

echo "You can use $ get-google-images.sh   to download images"
echo "for example, $ get-google-images.sh \"facebook\" 20 "
echo "Then you can see downloads folder on your current folder. There are files in that folder"

exit 0
