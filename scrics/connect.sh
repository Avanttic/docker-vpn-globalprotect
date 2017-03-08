#!/bin/bash
echo $PASSWORD|/openconnect/openconnect --protocol=gp $SERVER --user=$USER --no-dtls -b

sleep 5

iptables -t nat -A POSTROUTING -o tun0 -j MASQUERADE
iptables -A FORWARD -i eth0 -j ACCEPT

/bin/bash
