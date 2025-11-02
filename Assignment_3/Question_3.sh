#!/bin/bash

read -p "Enter salary: " salary

echo " "
echo "              Salary Structure"
echo " "
da=$(echo "scale=2; $salary * 0.40" | bc)
hra=$(echo "scale=2; $salary * 0.30" | bc)
gs=$(echo "scale=2; $salary + $da + $hra" | bc)

awk -v var_da="$da" -v var_hra="$hra" -v var_gs="$gs" 'BEGIN {
	printf "%-30s %10.2lf\n", "Dearness allowance: ", var_da
	printf "%-30s %10.2lf\n", "House rent allowance: ", var_hra
	printf "*******************************************\n"
	printf "%-30s %10.2lf\n", "Gross Salary: ", var_gs
}'
