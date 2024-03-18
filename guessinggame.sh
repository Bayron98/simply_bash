#!/bin/bash

function main {
nbr=$(ls -l | grep ^- | wc -l)
echo "How many files are in the current directory?"
while [[ true ]]
do
	read guess
	if [[ $guess -eq $nbr ]]
	then
		echo "Correct, congratulation!"
		exit 0
	else
		if [[ $guess -lt $nbr ]]
		then
			echo "too low"
		else
			echo "too high"
		fi
		echo "Try again"
	fi
done
}
main
