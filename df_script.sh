#!/bin/bash

if [[ -z $1 ]]
 then
echo "Enter a mount point"
read userpoint
else
userpoint=$1
fi
	if $(df -h |grep -v "tmpfs"| grep -q "${userpoint}$")
  then
        echo "$(df -h | grep ${userpoint}$ |awk '{print $1}') is mounted on ${userpoint}. \
 Its size is $(df -h |grep ${userpoint}$ |tr -s ' ' |cut -d' ' -f2).\
 It has $(df -h |grep ${userpoint}$ |tr -s ' ' |cut -d' ' -f4) available space\
 and $(df -h |grep ${userpoint}$ |tr -s ' ' |cut -d' ' -f3) of it is used,\
 which is $(df -h |grep ${userpoint}$ |tr -s ' ' |cut -d' ' -f5) "
	exit 0
else 
	echo "Error, mountpoint not found, please try again" 1>&2 
	exit 1
fi 
#echo "$(df -h | grep ${userpoint}$ |tr -s ' '|cut -d' ' -f1) is mounted on ${userpoint}.\
