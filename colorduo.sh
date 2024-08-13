#!/bin/bash

declare -A color=(
["black"]="0"
["brown"]="1"
["red"]="2"
["orange"]="3"
["yellow"]="4"
["green"]="5"
["blue"]="6"
["violet"]="7"
["grey"]="8"
["white"]="9"
)
for key in "$@"; do
    if [[ ! -v color[$key] ]]; then
        echo "invalid color"
        exit 1
    fi
done

if [[ "$1" != "black" ]];then
        echo ${color[$1]}${color[$2]}
else
        echo ${color[$2]}
fi

