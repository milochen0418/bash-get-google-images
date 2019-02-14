#!/bin/bash


## Usage
#get-google-images.sh [keyword] [number]

if ! which google-chrome-stable; then
	echo "Command is interrupted because you have no google-chrome-stable in any folder of PATH"
	echo "Suggest you to debug ./install-google-chrome-stable.sh script , or you can install chrome by yourself"
	exit 1
fi

if ! which chromedriver; then
	echo "Command is interrupted because you have no chromedriver in any folder of  PATH"
	echo "Suggest you to debug ./install.sh script , or you can install chromedriver by yourself"
	exit 1
fi

if ! which googleimagesdownload; then
	echo "Command is interrupted because you have no chromedriver in any folder of  PATH"
	echo "Suggest you to debug ./install.sh script , or you can install googleimagesdownload by yourself"
	exit 1
fi

googleimagesdownload --keywords "$1" --limit $2 --chromedriver=$(which chromedriver)



