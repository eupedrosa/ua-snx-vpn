#!/bin/bash

set -e

user=$VPN_USER
password=$VPN_PWD

snx_command="snx -s go.ua.pt -u $user"
/usr/bin/expect <<EOF
spawn $snx_command
expect "*?assword:"
send "$password\r"
expect "*Do you accept*"
send "y\r"
expect "SNX - connected."
interact
EOF

ifconfig tunsnx mtu 1350
iptables -t nat -A POSTROUTING -o tunsnx -j MASQUERADE
iptables -A FORWARD -i eth0 -j ACCEPT

/bin/bash
