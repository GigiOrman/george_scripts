#!/bin/bash

if [[ $(echo "$1" |tr -cd [:digit:].-) != "$1" || $(echo "$2" |tr -cd [:digit:].-) != "$2" ]];then
	echo "Please enter only integers or floats"
	exit 1
fi

if [[ $# -ne 2 ]];then
	echo "Please enter exactly 2 arguments"
	exit 1
fi

if [ "$(echo "$1 * $1 + $2 * $2 <= 100" | bc)" -eq 1 ] && [ "$(echo "$1 * $1 + $2 * $2 > 25" | bc)" -eq 1 ]; then
    echo "1"
elif [ "$(echo "$1 * $1 + $2 * $2 <= 25" | bc)" -eq 1 ] && [ "$(echo "$1 * $1 + $2 * $2 > 1" | bc)" -eq 1 ]; then
    echo "5"
elif [ "$(echo "$1 * $1 + $2 * $2 <= 1" | bc)" -eq 1 ]; then
    echo "10"
else
    echo "0"
fi
