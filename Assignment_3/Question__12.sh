#!/bin/bash

op1=$1
op=$2
op2=$3

if [[ ! "$op1" =~ ^[0-9]+$ ]]; then
	echo "Inavlid first operand"
elif [[ ! "$op" =~ ^[-+x/%^]+$ ]]; then
	echo "Invalid operator!"
elif [[ ! "$op2" =~ ^[0-9]+$ ]]; then
	echo "Invalid second operand"
fi

if [ "$op" = "+" ]; then
	sum=$(( $op1 + $op2 ))
	echo "$op1 $op $op2 = $sum"
elif [ "$op" = "-" ]; then
	dif=$(( $op1 - $op2 ))
	echo "$op1 $op $op2 = $dif"
elif [ "$op" = "x" ]; then
	pro=$(( $op1 * $op2 ))
	echo "$op1 $op $op2 = $pro"
elif [ "$op" = "/" ]; then
	if [ $op2 -eq 0 ]; then
		echo "Division by zero is not defined!"
	else
		div=$(( $op1 / $op2 ))
		echo "$op1 $op $op2 = $div"
	fi
elif [ "$op" = "%" ]; then
	mod=$(( $op1 % $op2 ))
	echo "$op1 $op $op2 = $mod"
elif [ "$op" = "^" ]; then
	exp=$(( $op1 ** $op2 ))
	echo "$op1 $op $op2 = $exp"
else
	echo "Invalid operation"
fi
