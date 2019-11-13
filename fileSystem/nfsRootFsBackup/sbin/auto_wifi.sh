#!/bin/sh
if [ $ACTION = "add" ]; 
then
   wpa_supplicant -B -c/etc/wpa_wpa2.conf  -iwlan0
   wpa_cli -a/sbin/wpa_action.sh -B
else
   killall wpa_supplicant
   killall wpa_cli
   killall dhclient
fi
