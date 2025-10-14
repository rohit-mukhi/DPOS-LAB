#!/bin/bash

# This script teaches the bc utility for floating point calculations
# bc is used for high precision calculations

echo "Enter principal: "
read principal
echo "Enter rate: "
read rate
echo "Enter time in years: "
read time

amount=$(echo "scale=2; $principal + (($principal * $rate * $time)/100)" | bc)
echo "The amount you will receive at maturity is $amount"
