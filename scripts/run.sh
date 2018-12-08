#!/bin/sh

LOGFILE=/opt/iobroker/log/iobroker.%Y-%m-%d.log
SLEEPINTERVAL=1.0

function PrintNewLines {
        	NEWLINES=$(wc -l < "$(date +"$LOGFILE")")
        	(( OLDLINES <= NEWLINES )) && LINES=$(( NEWLINES - OLDLINES )) || LINES=$NEWLINES
        	tail -n "$LINES" "$(date +"$LOGFILE")"
        	test ! -z "$1" && grep -q "$1" <(tail -n "$LINES" "$(date +"$LOGFILE")") && FOUND=true || FOUND=false
        	OLDLINES=$NEWLINES
}

while true; do
		PrintNewLines											## Printing log lines in intervalls
		sleep $SLEEPINTERVAL
done


#node node_modules/iobroker.js-controller/controller.js
