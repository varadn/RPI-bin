#!/bin/bash

tput clear
ex=0
val=0
cl=0
while [ "$ex" -eq "$val" ] 
do
cl=0
while [ "$cl" -lt "100" ]
do
cl=$((cl+1))
tput cup  $((RANDOM%200+1)) $((RANDOM%200+1))
echo "Hello"
tput cup  $((RANDOM%200+1)) $((RANDOM%200+1))
echo "Hello"
tput cup  $((RANDOM%200+1)) $((RANDOM%200+1))
echo "Hello"
tput cup  $((RANDOM%200+1)) $((RANDOM%200+1))
echo "Hello"
tput cup  $((RANDOM%200+1)) $((RANDOM%200+1))
echo "Hello"
tput cup  $((RANDOM%200+1)) $((RANDOM%200+1))
echo "Hello"
tput cup  $((RANDOM%200+1)) $((RANDOM%200+1))
echo "Hello"
done
done