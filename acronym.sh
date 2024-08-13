#!/bin/bash

for (( i=1; i<${#1}; i++ )); do
result+=$(echo "$1" |tr '-' ' '|tr -d '[:punct:]'|cut -d' ' -f"$i" |cut -c1)
done
echo "${result^^}"
