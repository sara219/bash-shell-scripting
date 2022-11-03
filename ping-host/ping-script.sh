#!/bin/zsh
# Author: Sara
# Date: 03/11/2022
# Description: This script will ping a remote host and notify.

# ping => test the reachability of a host on the ip network.
ping -c1 192.168.1.123
if [ $? -eq 0 ]; then
    echo 'OK!'
else
    echo 'NOT OK!!!'
fi
