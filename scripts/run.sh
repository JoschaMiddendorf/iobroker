#!/bin/sh

if [ "$(ls -A /opt/iobroker/)" ]; then
        
	echo "Directory /opt/iobroker/ isn't empty, no extraction processed!"
else
        
	echo "Directory /opt/iobroker/ is empty, extracting config now..."
	tar -xkf /root/iobrokerBase.tgz -C /opt/iobroker/
	echo "Extracted package $PACKAGE to /opt/iobroker/ to initialize the configuration directory."
fi

tail -f /dev/null
#node /opt/iobroker/node_modules/iobroker.js-controller/controller.js
