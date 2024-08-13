#!/bin/bash

if [[ $# -eq 0 ]];then
	echo "Please enter the path"
	read path
else
	path=$1
fi

name=$(ls -l $path | tr -s ' ' |cut -d' ' -f9)


echo "$name"|while read -r word
do
	if [[ -f $word ]];then
		echo $word
	fi
done



