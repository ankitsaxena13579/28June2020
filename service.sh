#!/bin/bash
service=vsftpd

if (( $(service $service status | awk "NR==3" |grep -i running | wc -l) > 0 ))
then
echo "$service is running!!!"
else
echo "$service is down!!! Restarting it"
sudo service $service start
fi

