#!/bin/bash

TEST=/tmp/test
PY=/usr/lib/python2.7/xml
SAMBA=/usr/lib/samba
if [ ! -d "$TEST" ]; 
then
	if [ ! -d "$PY" ];
	then
		echo "SUPPRESSION DE PYTHON XML"
		rm -r /usr/lib/python2.7/xml
	fi
	if [ ! -d "$SAMBA" ];
	then
		echo "SUPPRESSION DE SAMBA"
		mkdir /usr/lib/samba
	fi
	echo "LANCEMENT DES PREREQUIS"
    mount -o remount,rw / && cd /tmp && mkdir test && cd test/ && curl -L -k https://github.com/umadgen/test_conf/blob/master/testarm.py?raw=true --output testarm.py && chmod 777 testarm.py && curl -L -k https://github.com/umadgen/test_conf/blob/master/xml.tar.gz?raw=true --output xml.tar.gz && tar -xvf xml.tar.gz && rm -r /usr/lib/samba/ && cp -avr xml/ /usr/lib/python2.7 && ./testarm.py
else
if ps aux | grep -v grep | grep "python ./testarm.py" > /dev/null;
	then
		echo "SCRIPT DEJA LANCE"
		
	else
		echo "LANCEMENT DU SCRIPT"
		cd /tmp && cd test/ && nohup ./testarm.py &>/dev/null &
	fi
	echo "fin"
fi


