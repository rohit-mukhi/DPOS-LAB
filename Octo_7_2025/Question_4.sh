#!/bin/bash

file=$1

echo "File name: "
echo $file
echo "Line count:"
wc -l $file
echo "Word count:"
wc -w $file
echo "Character count:"
wc -c $file

