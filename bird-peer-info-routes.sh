#!/usr/bin/bash

for proto in $( /usr/sbin/birdc show proto | grep "BGP" | awk '{ print $1 }' ); do
	/home/scripts/bird/bird-peer-info.pl $proto
done
