#!/bin/bash

check=$(echo "$1"|tr -d ' ')
if [[ ${#check} -le 1 ]];then
	echo false
    	exit 0
fi

if [[ "$check" =~ [^0-9] ]];then
echo false
exit 0
fi

for (( i=${#check}-1; i>=0; i-- )); do
    reversed="${reversed}${check:i:1}"
done
check="$reversed"

for ((i=0; i<${#check}; i++));do
	str=${check:i:1}
	if [[ i%2 -eq 1 ]];then
		if [[ $str*2 -gt 9 ]];then
			res+=$((str*2 -9));
		else
			res+=$((str*2));
		fi
	else
		res+=$str
	fi

done

for ((i=0; i<${#res}; i++));do
	digit=${res:i:1}
	count=$((count+digit))
done

if [[ count%10 -eq 0 ]];then
	echo true
else
	echo false
fi


