#!/bin/bash

start=$(echo "obase=2;$1" | bc)
bin=$(printf %05d "$start")


if [[ "${bin:4:1}" == "1" ]];then
	res+="wink,"
fi
if [[ "${bin:3:1}" == "1" ]];then
        res+="double blink,"
fi
if [[ "${bin:2:1}" == "1" ]];then
        res+="close your eyes,"
fi
if [[ "${bin:1:1}" == "1" ]];then
        res+="jump,"
fi

if [[ "${bin:0:1}" == 1 ]];then
for (( i=$(echo "$res" |grep -o ',' | wc -l); i>0; i-- ));do
	fin+="$(echo "$res"|cut -d',' -f$i)"
	fin+=","
done
echo "$fin" | sed -E 's/,$/''/'
else
echo "$res" | sed -E 's/,$/''/'
fi
