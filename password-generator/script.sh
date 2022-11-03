#!/bin/zsh
# Author: Sara
# Date: 29/10/2022
# Description: Simple Random Password Generator
# Modified: 02/11/2022

echo "This is a simple Password Generator "
echo "Pleas enter the length of the Password: "
read PASS_LENGTH

for pass in $(seq 1 6); do
    # seq 1 6 => print 6 random password
    openssl rand -base64 48 | cut -c1-$PASS_LENGTH
    #generate the pass and after that cut it from the first letter to the pass length user defined.
done
