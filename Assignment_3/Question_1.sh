#!/bin/bash

echo "Enter a number: "
read num1
echo "Enter another number: "
read num2

sum=$(($num1+$num2))
diff=$(($num1 - $num2))
pro=$(($num1 * $num2))

echo "Sum of $num1 and $num2 is $sum"
echo "When $num2 is subtracted from $num1 gives $diff"
echo "The product of $num1 and $num2 is $pro"

if [ $num2 -ne 0 ]; then
	quo=$(($num1 / $num2))
	echo "$num1 divided by $num2 gives $quo"
else
	echo "Division by zero is not defined"
fi
