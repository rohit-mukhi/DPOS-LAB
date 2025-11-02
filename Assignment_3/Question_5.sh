#!/bin/bash

read -p "Enter cost price: " cost_price
read -p "Enter selling price: " selling_price

if [ $selling_price -gt $cost_price ]; then
	profit=$(( $selling_price - $cost_price ))
	echo "Profit of $profit was made."
elif [ $selling_price -lt $cost_price ]; then
	loss=$(( $cost_price - $selling_price ))
	echo "A loss of $loss was incurred"
elif [ $selling_price -eq $cost_price ]; then
	echo "It was a break even deal!"
fi

