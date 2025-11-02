#!/bin/bash

echo "Enter a floating point number: "
read num1
echo "Another one: "
read num2

sum=$(echo "$num1 + $num2" | bc)
diff=$(echo "$num1 - $num2" | bc)
pro=$(echo "$num1 * $num2" | bc)

echo "The sum of $num1 and $num2 is $sum"
echo "$num2 subtracted from $num1 gives $diff"
echo "The product of $num1 and $num2 is $pro"

if [ $(echo "$num2 != 0" | bc) -eq 1 ]; then
	quo=$(echo "scale=2; $num1 / $num2" | bc -l)
	echo "When $num2 divides $num1 we get $quo"
else
	echo "Division by zero is not defined"
fi
