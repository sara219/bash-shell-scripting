#!/bin/zsh
# Author: Sara
# Date: 03/11/2022
# Description: This script will ping a remote host and notify.

#? ping => test the reachability of a host on the ip network.
# ping -c1 192.168.1.5
# if [ $? -eq 0 ]; then
#     echo 'OK!'
# else
#     echo 'NOT OK!!!'
# fi

# ------------------------------------------

#? ping the host, but without showing the output! ==> using { &>/dev/null }

# ping -c1 192.168.1.5 &>/dev/null
# if [ $? -eq 0 ]; then
#     echo 'OK!'
# else
#     echo 'NOT OK!!!'
# fi

# ------------------------------------------

#? Define HOSTS variable:

hosts="192.168.1.5"
ping -c1 $hosts &>/dev/null
if [ $? -eq 0 ]; then
    echo $hosts is OK!!
else
    echo $hosts is not OK!
fi
