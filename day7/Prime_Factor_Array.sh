#!/bin/bash 

read -p "Enter the number to be evaluated: " n;

for (( i=1; i<=$n; i++ ))
do
	if [ $(($n % $i)) -eq 0 ]
	then
	echo  $i is a prime factor
	array[$i]=$i
	fi
done

echo ${array[@]}
