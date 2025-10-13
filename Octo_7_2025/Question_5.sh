#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <filename>"
    echo "Please provide a file path as an argument."
    exit 1
fi

FILE="$1"

if [ ! -f "$FILE" ]; then
    echo "Error: File '$FILE' not found or is not a regular file."
    exit 1
fi

if [ ! -r "$FILE" ]; then
    echo "Error: File '$FILE' is not readable (check permissions)."
    exit 1
fi

wc -lwc "$FILE" | awk '{
	printf "%20s%15s%15s%15s\n", "Filename", "Line count", "Word count", "Char count"
	printf "%20s%15s%15s%15s\n", $4, $1, $2, $3
}'

exit 0
