#!/bin/bash
# THE AWESOME GUESSING GAME
#
# usage: bash guessinggame.sh
#
# The program ask for the number of files in the actual directory.
# If the guess is wrong it give a clue and promp for other number.
# If the guess is correct the program congrats you and terminate.
#
# author: Daniel Hernán Rico
# date: 2020-10-18

function validate_input() {
	read guess
	while ! [[ "$guess" =~ ^[0-9]+$ ]]
	do
		echo -n "Input must be a number. Try again.>"
		read guess
	done
}

secret=$(ls -A| wc -l)
guess=-1
echo -n "How many files are in this directory"
while [ $guess -ne $secret ]
do
	echo -n "? "
	validate_input
	if [ $guess -lt $secret ]
	then
		echo "Too low."
	elif [ $guess -gt $secret ]
	then
		echo "Too High."
	fi
done
echo "Well done!."
