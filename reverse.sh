#!/bin/bash

for (( i=${#1}; i>=0; i-- ));do
	res+=${1:i:1}
done

echo "$res"
