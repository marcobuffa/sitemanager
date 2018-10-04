#!/bin/sh
CONFIGFILE=/etc/sitemanager/sme.txt

if [ ! -f $CONFIGFILE ]
then
	echo $CONFIGFILE not found. Creating from ENV variables...

	if [ ! -z $SERVER ]; then echo "Server="$SERVER >> $CONFIGFILE; fi
	if [ ! -z $DOMAIN ]; then echo "Domain="$DOMAIN >> $CONFIGFILE; fi
	if [ ! -z $NAME ]; then echo "Name="$NAME >> $CONFIGFILE; fi
fi

#cat $CONFIGFILE

exec ./sitemanager-x64

