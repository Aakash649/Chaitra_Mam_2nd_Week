#!/bin/bash -x

read -p "Enter the value of Nth power of 2: " n;


for (( i=1; i<=$n; i++ ))
do
	j=$((2 * $i))
	echo "$i power of 2 is $j"
done
