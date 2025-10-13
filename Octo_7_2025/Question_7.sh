#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo "Missing parameters for $0"
    exit 1
fi

N=$1
M=$2
FILE=$3

if [ ! -f $FILE ] || [ ! -r $FILE ]; then
    echo "Error: File $FILE not found or is not a readable file."
    exit 1
fi

if  [ $N -le 0 ] || [ $M -le 0 ]; then
    echo "Error: N ($N) and M ($M) must be positive integers."
    exit 1
fi

echo "Displaying First $N Lines of: $FILE"
echo ""
head -n $N $FILE

echo ""

echo "Displaying Last $M Lines of: $FILE"
echo ""
tail -n $M $FILE

exit 0
