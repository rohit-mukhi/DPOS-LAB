#!/bin/bash

num1=$1
num2=$2
num3=$3

if [ -n "$num1" -a -n "$num2" -a -n "$num3" ]; then
	if [ $num1 -gt $num2 -a $num1 -gt $num3 ]; then
		echo "$num1 is greatest"
	elif [ $num2 -gt $num1 -a $num2 -gt $num3 ]; then
		echo "$num2 is greatest"
	else
		echo "$num3 is greatest"
	fi
else
	echo "Arguments missing!"
fi
