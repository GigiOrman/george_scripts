#!/bin/bash

startnum=$1
res=0
for (( i=0; i<${#startnum}; i++ ));do
	num=${startnum:i:1}
	res=$((res + num**${#startnum}))
done

if [[ $startnum == $res ]];then
	echo "$startnum is an Armstrong number"
	exit 0
fi
