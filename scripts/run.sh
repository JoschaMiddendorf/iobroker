#!/bin/sh

##################################################################################################
##
##	Start and intitialization script for IoBroker
##	Copyright (c) 2018 Joscha Middendorf
##
##	After mounting a volume to the container, this script extracts the content 
##	of the previously compressed configuration directory back to a provided directory,
##	if the directory is empty.
##	Afrerwards it starts IoBroker and monitors it during runtime.
##
##################################################################################################

if [ "$(ls -A /opt/iobroker/)" ]; then
        
	echo "Directory /opt/iobroker/ isn't empty, no extraction processed!"
else
        
	echo "Directory /opt/iobroker/ is empty, extracting config now..."
	tar -xkf /root/iobrokerBase.tgz -C /opt/iobroker/
	echo "Extracted package $PACKAGE to /opt/iobroker/ to initialize the configuration directory."
fi

tail -f /dev/null
#node /opt/iobroker/node_modules/iobroker.js-controller/controller.js
