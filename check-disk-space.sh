#!/bin/zsh 

# Check the disk space! if theres space or not, if not send email to me  :: 

DISK=10
EMAIL=sara97abuawwad@gmail.com
PART=disk3s1

USE=$(df -h | grep disk3s1 | awk '{print $5}' | cut -d '%' -f1)


if [ $USE -gt $DISK ]; then
    echo "Persent Used: $USE" | mail -s "Running out of disk space" $EMAIL
   echo 'send!!'

else
    echo "Persent Used: $USE" | mail -s "good!" $EMAIL
   echo 'send???!!'
   
fi 
