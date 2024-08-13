#!/bin/bash 

str=$(echo "${1,,}"| tr -d '0-9' |tr -d '[:punct:]'|tr -d ' ')



for (( i==0; i<${#str}; i++ )); do
        if [[ ! $count =~ ${str:i:1} ]];then
                count+="${str:i:1}"
        fi
done


if [[ ${#count} == 26 ]];then
        echo true
else
        echo false
fi
