#!/bin/bash

file1=$1
file2=$2

if [ ! -f "$file1" ]; then
	echo "First file is invalid"
elif [ ! -f "$file2" ]; then
	echo "Second file is invalid"
fi

cmp -s "$file1" "$file2"

if [ $? -eq 0 ]; then
	echo "Both files have the same content."
	rm "$file2" 2>/dev/null
	if [ $? -eq 0 ]; then
		echo "Second file was deleted successsfully!"
	else
		echo "Could not delete file for some reason :-)"
	fi
else
	echo "The contents of both files are different."
fi
