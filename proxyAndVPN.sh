#!/bin/bash

#Date: Nov 10 , 2013 #hiren  :D

echo "~~~~~~~~~~~~~~~~~"
echo "|               |"
echo "| System Update |"
echo "|               |"
echo "~~~~~~~~~~~~~~~~~"
apt-get update

echo "Proxy Or VPN ?"
echo "Press 1 For Proxy , Press 2 For VPN"
read choose

$ipaddrs = ifconfig eth0 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}' 

if [ $choose == '1' ]; then
	apt-get install python-m2crypto python-gevent python-pip -y
	pip install shadowsocks
fi