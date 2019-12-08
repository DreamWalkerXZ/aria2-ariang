#!/bin/sh
if [ ! -f /aria2/conf/aria2.conf ]; then
	cp /aria2/conf-temp/aria2.conf /aria2/conf/aria2.conf
fi

touch /aria2/conf/aria2.session

darkhttpd /aria-ng --port 80 &
aria2c --conf-path=/aria2/conf/aria2.conf
