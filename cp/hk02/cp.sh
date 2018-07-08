#!/usr/bin/env bash
ifconfig eth0 down
ifconfig eth0 hw ether 6e:94:68:f1:e8:31
ifconfig etho up
dhclient -r -v eth0
mv /var/lib/dhclient/dhclient.leases /var/lib/dhclient/dhclient.leases.bak
dhclient -v eth0
sleep 20
bash /usr/local/bin/cf-ddns.sh