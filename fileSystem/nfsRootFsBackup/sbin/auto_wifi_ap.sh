#!/bin/sh
if [ $ACTION = "add" ]; 
then
   hostapd -B /etc/myhostapd.conf
   ifconfig wlan0 192.168.1.1
   dhcpd -cf /etc/dhcpd.conf wlan0
else
   killall hostapd
   killall dhcpd
fi
