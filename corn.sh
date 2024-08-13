#!/bin/bash

if [ "$1" == "total" ]; then
    echo "2^64 -1"|bc
    exit 0
fi
if [[ $1 -le 0 || $1 -gt 64 ]];then 
    echo "Error: invalid input"
    exit 1
else
    echo "2^($1 - 1)" |bc
fi
