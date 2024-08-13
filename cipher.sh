#!/bin/bash

#Script to encode and decode with Atbash Cipher
#Usage: ./cipher {encode|decode} <string>

alpha=({a..z} {A..Z})
declare -A arr

for i in {0..51};do
arr[${alpha[i]}]=${alpha[-i+25]}
done

str=$(echo "$2" | tr -cd [[:alnum:]])

#Encoding
if [[ "$1" == "encode" ]];then

for (( i=0; i<${#str};i++ ));do
	if (( i!=0 && i % 5== 0 ));then
		res+=" "
	fi
	if [[ ${str:i:1} =~ ^[a-zA-Z] ]];then
		res+=${arr[${str:i:1}]}
	else
		res+=${str:i:1}
	fi
done
echo "${res,,}"
fi

#Decoding
if [[ "$1" == "decode" ]];then
for (( i=0; i<${#str};i++ ));do
	if (( i!=0 && i % 5== 0 ));then
		res+=" "
	fi
	if [[ ${str:i:1} =~ ^[a-zA-Z] ]];then
		res+=${arr[${str:i:1}]}
	else
		res+=${str:i:1}
	fi
done
echo "${res,,}"|tr -d ' '
fi

