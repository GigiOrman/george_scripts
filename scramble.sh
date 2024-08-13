#!/bin/bash

res=0

for (( i=0; i<${#1}; i++ )); do
    if [[ ${1:$i:1} =~ [AaEeIiOoUuLlNnRrSsTt] ]]; then
        res=$((res+1))
    elif [[ ${1:$i:1} =~ [DdGg] ]]; then
        res=$((res+2))
    elif [[ ${1:$i:1} =~ [BbCcMmPp] ]]; then
        res=$((res+3))
    elif [[ ${1:$i:1} =~ [FfHhVvWwYy] ]]; then
        res=$((res+4))
    elif [[ ${1:$i:1} =~ [Kk] ]]; then
        res=$((res+5))
    elif [[ ${1:$i:1} =~ [JjXx] ]]; then
        res=$((res+8))
    elif [[ ${1:$i:1} =~ [QqZz] ]]; then
        res=$((res+10))
    fi
done

echo "$res"

