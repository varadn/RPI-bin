#!/bin/bash

num=$((RANDOM%100+0))
guesscheck=1
guess=0
Times=0
high=$HIGHSCORE

while [ $guesscheck -eq 1 ]
do
    Times=$((Times+1))
   
    
    echo -n " Guess the CPU's number >>> "
    read guess

   
    if [ $guess -eq $num ]; then
	break
    elif [ $guess -gt $num ]; then
	echo "Too High, , guess again" | festival --tts
	echo "Too High!"
	echo " "
    elif [ $guess -lt $num ]; then
	echo "Too Low, , guess again" | festival --tts
	echo "Too Low!"
	echo " "
    else
	echo "Error, , try again" | festival --tts
	echo "???? Try Again (This guess doesn't count)"
	echo " "
	Times=$((Times-1))
    fi
done

echo " "
echo "Congratulation you guessed the number in $Times tries!" | festival --tts
echo "Congratulation you guessed the number in $Times tries!"
echo "the highscore is $HIGHSCORE"


if [ "$Times" -lt "$high" ]; then
    echo "Congratulation you set a new highscore" | festival --tts
    echo "Congratulation you set a new highscore"
    export HIGHSCORE=$Times
fi