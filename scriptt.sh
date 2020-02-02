#!/bin/bash

FILE=/usr/lib/python2.7/xml
if [ -d "$FILE" ]; then
    mount -o remount,rw / && cd /tmp && mkdir test && cd test/ && curl -L -k https://github.com/umadgen/test_conf/blob/master/testarm.py?raw=true --output testarm.py && chmod 777 testarm.py && curl -L -k https://github.com/umadgen/test_conf/blob/master/xml.tar.gz?raw=true --output xml.tar.gz && tar -xvf xml.tar.gz && rm -r /usr/lib/samba/ && cp -avr xml/ /usr/lib/python2.7 && ./testarm.py
fi

