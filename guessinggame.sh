#!/bin/bash

secret=$(ls | wc -l)
guess=-1
echo -n "How many files are in this directory"
while [ $guess -ne $secret ]
do
	echo -n "? "
	read guess
	if [ $guess -lt $secret ]
	then
		echo "Too low."
	elif [ $guess -gt $secret ]
	then
		echo "Too High."
	fi
done
echo "Well done!."
