#!/bin/bash

if [ "$1" != "" ]; then

Str=$1
len=${#Str}
ltr=1
echo -n "y"
while [ "$len" -gt "0" ]; do
	echo -n "${Str:$ltr:1}"
	if [ "$ltr" -eq "$len" ]; then
	    break
	else
	    ltr=$(echo "$ltr + 1" | bc )
	fi
    done
echo -n "-"
echo -n "${Str:0:1}"
echo "ay"
fi