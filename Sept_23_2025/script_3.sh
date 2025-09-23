#!/bin/bash

# This script is used to find if a current file exists in the present working directory

#1/bin/bash

echo "Enter file name: "
read filename

if [ -e "$filename" ]; then
	echo "File named as $filename was found!"
else
	echo "File was not found!"
fi
