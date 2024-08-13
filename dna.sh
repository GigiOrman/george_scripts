#!/bin/bash



count=0
str1=$1
str2=$2

if [ $# -ne 2 ];then
    echo "Usage: $0 <string1> <string2>"
    exit 1
fi

if [ ${#str1} != ${#str2} ]; then
    echo "strands must be of equal length" 1>&2
    exit 1
else
    for (( i=0; i<${#str1}; i++ )) ;do
        if [ "${str1:$i:1}" != "${str2:$i:1}" ];then
                ((count++))
        fi
done
fi
echo "$count"

