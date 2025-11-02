#!/bin/bash

read -p "Enter marks: " marks
read -p "Enter attendance percentage: " att

if [ $marks -ge 20 -a $att -ge 75 ]; then
	echo "Allowed!"
else
	echo "Not allowed"
fi
