#!/bin/bash
clear
y=50
x=100
w=1
z=1
while [ "e" = "e" ]
do
tput clear
tput cup $y $x
echo "RPI ROCKS!!"
#echo " OOOO"
#tput cup $((y-1)) $x
#echo "O    O"
#tput cup $((y+2)) $x
#echo " OOOO"
x=$((x+z))
y=$((y+w))
if [ "$x" -gt "199" ]; then
z=$((-1))
fi
if [ "$x" -lt "1" ]; then
z=1
fi

if [ "$y" -gt "59" ]; then
w=$((-1))
fi
if [ "$y" -lt "1" ]; then
w=1
fi

done