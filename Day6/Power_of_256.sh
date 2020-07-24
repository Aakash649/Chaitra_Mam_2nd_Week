#!/bin/bash -x

read -p "Enter the Nth power of two to be calculated:" num;
j=1
i=1

while [[ $i -le num || $j -lt 256 ]]
do
	j=$((2 * $i))
	echo  $j
	$((i++))
done
