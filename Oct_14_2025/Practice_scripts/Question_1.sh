#!/bin/bash

# This script teaches conditionals and floating point calculations with awk utility
# The awk is good for text formatting. For high level precision use bc

echo "Enter radius: "
read radius
area=0
if [ $radius -le 0  ]; then
	echo "Radius cannot be negative"
else
	area=$(awk "BEGIN {printf \"%.2f\\n\", 3.14 *  $radius * $radius}")
	echo "Area of circle is $area"
fi
