#!/bin/bash

# This script is used to display elements of a loop by iterating over an array

destinations=("Palma de Mallorca" "Rio de Janerio" "Panama City" "Hobart")

echo "I would love to visit the following places: "

for place in "${destinations[@]}"; do
	echo "$place "
done
