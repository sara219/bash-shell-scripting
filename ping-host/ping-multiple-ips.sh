#!/bin/zsh
# Author: Sara
# Date: 03/11/2022
# Description: This script will ping multiple remote host and notify.

hosts="./hosts-ips"

for ip in $(cat $hosts); do
    ping -c1 $ip &>/dev/null
    if [ $? -eq 0 ]; then
        echo $ip is OK!!
    else
        echo $ip is not OK!
    fi

done
