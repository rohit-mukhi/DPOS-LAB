#!/bin/bash

year=$1

if [ -n "$year" ]; then
	if (( (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0) )); then
		echo "$year is a leap year"
	else
		echo "$year is not a leap year"
	fi
else
	if (( (2025 % 4 == 0 && 2025 % 100 != 0) || (2025 % 400 == 0) )); then
		echo "2025 is a leap year"
	else
		echo "2025 is not a leap year"
	fi
fi
