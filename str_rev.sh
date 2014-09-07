#!/bin/bash 
stop=0

if [ "$1" != "" ]; then

Str=$1

len=${#Str}

while [ "$len" -ge "$stop" ]; do
    echo -n "${Str:$len:1}"
    len=$( echo "$len - 1" | bc )
done


fi