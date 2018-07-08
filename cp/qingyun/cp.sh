#!/usr/bin/env bash
dhclient -r -v ens192
mv /var/lib/dhclient/dhclient.leases /var/lib/dhclient/dhclient.leases.bak
dhclient -v ens192
service network restart
sleep 20
bash /usr/local/bin/cf-ddns.sh