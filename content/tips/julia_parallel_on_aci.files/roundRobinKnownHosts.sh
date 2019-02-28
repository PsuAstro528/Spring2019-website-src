#!/bin/bash

hostname=$1
roundRobinIPs=$(nslookup $hostname | grep Address | grep -v '#53' | awk '{print $2}')
CMDS="nslookup ssh-keyscan sed"

for I in $CMDS; do
	type -P $I &>/dev/null && continue || { echo "$I not found."; exit 1; }
done

for I in $roundRobinIPs; do
	firstOctet=$(echo $I | cut -d'.' -f 1)
	#ssh-keyscan -t rsa $IP 2> /dev/null | sed "s/$firstOctet/$hostname,$firstOctet/" >> $tempHosts
	ssh-keyscan -t rsa $I 2> /dev/null | sed "s/$firstOctet/$hostname,$firstOctet/"
done
