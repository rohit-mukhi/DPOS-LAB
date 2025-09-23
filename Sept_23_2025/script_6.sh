#!/bin/bash

echo "Enter any number: "

factorial=1

read number

for ((i=1;i<=$number;i++)); do
	factorial=$((factorial*i))
done

echo "Factorial of $number is $factorial" 
