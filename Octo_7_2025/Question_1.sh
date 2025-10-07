#!/bin/bash

cat $1 $2 > result.txt
cat $3 >> result.txt

#cat result.txt

declare -a arr

# mapfile is useed to read the lines from a file then store each line in 
# the array
# The -t flag is used to ignore the trailing newline characters
mapfile -t arr < result.txt

n=${#arr[@]}

for((i=0;i<n-1;i++)); do
        for((j=0;j<n-i-1;j++)); do
                if [[ ${arr[j+1]} -lt ${arr[j]} ]]; then
                        temp=${arr[j]}
                        arr[j]=${arr[j+1]}
                        arr[j+1]=$temp
                fi
        done
done

echo "Sorted values from the three files are:"

for val in ${arr[@]}; do
        echo $val;
done

