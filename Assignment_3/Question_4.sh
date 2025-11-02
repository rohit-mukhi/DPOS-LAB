#!/bin/bash

even=0
odd=0
for (( i=1; i<=10; i++ ))
do
	read -p "Enter number $i: " num
	if (( num % 2 == 0 )); then
		(( even++ ))
	else
		(( odd++ ))
	fi
done

echo " "
echo "Number of evens were $even"
echo "Number of odds were $odd"
