#!/bin/bash

read -p "Enter a character: " ch

len=${#ch}

if [ $len -gt 1 ]; then
	echo "You have entered more than one character"
	exit 0
fi

if [[ "$ch" == [a-z] ]]; then
	echo "You have entered a lower case character"
elif [[ "$ch" == [A-Z] ]]; then
	echo "You have entered an upper case character"
elif [[ "$ch" == [0-9] ]]; then
	echo "You have entered a digit"
else
	echo "You have entered a special character"
fi
