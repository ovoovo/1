#!/usr/bin/env bash
ifconfig eth0 down
ifconfig eth0 hw ether ca:7c:51:23:a5:9a
ifconfig etho up
dhclient -r -v eth0
mv /var/lib/dhclient/dhclient.leases /var/lib/dhclient/dhclient.leases.bak
dhclient -v eth0
sleep 20
bash /usr/local/bin/cf-ddns.sh