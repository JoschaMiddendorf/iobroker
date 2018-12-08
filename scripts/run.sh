#!/bin/sh

#LOGFILE=/opt/iobroker/log/iobroker.%Y-%m-%d.log
#SLEEPINTERVAL=1.0

#if [ -f $LOGFILE ]
#then
#	test -f "$(date +"$LOGFILE")" && OLDLINES=$(wc -l < "$(date +"$LOGFILE")") || OLDLINES=0
#	NEWLINES=$OLDLINES
#	FOUND=false
#	function PrintNewLines {
#	        NEWLINES=$(wc -l < "$(date +"$LOGFILE")")
#	        (( OLDLINES <= NEWLINES )) && LINES=$(( NEWLINES - OLDLINES )) || LINES=$NEWLINES
#	        tail -n "$LINES" "$(date +"$LOGFILE")"
#	        test ! -z "$1" && grep -q "$1" <(tail -n "$LINES" "$(date +"$LOGFILE")") && FOUND=true || FOUND=false
#	        OLDLINES=$NEWLINES
#	}
#	
#	while true; do
#		PrintNewLines
#		sleep $SLEEPINTERVAL
#	done
#else
	echo "NO LOGFILE!"
	tail -f /dev/null
#fi

#node node_modules/iobroker.js-controller/controller.js
