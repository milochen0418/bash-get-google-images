#!/bin/bash


## Usage
#get-google-images.sh [keyword] [number]

# process parameter
if [ $# -eq 0 ]; then 
	echo "get-google-images keyword [number=20]"
	echo "keyword: google searching keyword"
	echo "number(optional): how many number you wnat to download, default is 20. "
	exit 0
fi 
if [ "$1" = "--help" ]; then
	echo "get-google-images keyword [number=20]"
	echo "keyword: google searching keyword"
	echo "number(optional): how many number you wnat to download, default is 20. "
	exit 0
fi

echo "PATH = " :$PATH
if ! which google-chrome-stable; then
	echo "Command is interrupted because you have no google-chrome-stable in any folder of PATH"
	echo "Suggest you to debug ./install-google-chrome-stable.sh script , or you can install chrome by yourself"
	exit 1
fi

if ! which chromedriver ; then
	echo "Command is interrupted because you have no chromedriver in any folder of  PATH"
	echo "Suggest you to debug ./install.sh script , or you can install chromedriver by yourself"
	exit 1
fi

if ! which googleimagesdownload; then
	echo "Command is interrupted because you have no googleimagesdownload in any folder of  PATH"
	echo "Suggest you to debug ./install.sh script , or you can install googleimagesdownload by yourself"
	exit 1
fi

NUMBER=20
KEYWORD=""
if [ $# -gt 1 ] ; then 
	KEYWORD=$1
	NUMBER=$2	
fi
if [ $# -eq 1 ]; then
	KEYWORD=$1
fi
if [ $# -eq 0 ]; then
	echo "Command is like the followign"
	echo "get-google-images [number=20]"
	echo "If you need , please see the detail by  $ get-google-images --help "
	exit 1
fi

echo "keyword : $KEYWORD"
echo "number : $NUMBER"

googleimagesdownload --keywords "$KEYWORD" --limit $NUMBER --chromedriver=$(which chromedriver)



