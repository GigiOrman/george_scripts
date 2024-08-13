#!/bin/bash

if [[ $# -eq 0 ]];then
	echo "Please enter the path"
	read path
else
	path=$1
fi
name=$(ls -l $path | tr -s ' ' |cut -d' ' -f9)

for word in $name;do
	if [[ -f $word ]];then
		echo $word
	fi
done



