#!/bin/bash 


read -p "Enter the starting range: " num;

read -p "Enter the ending range: " t;

temp=0;

for (( j=$num; j<=$t; j++ ))
do
 	i=2
	flag=0
	while [ $i -le $((`expr $num / 2`)) ]
	do
		if [ $((`expr $num % $i`)) -eq 0 ]
		then
		flag=1
		fi

	i=`expr $i + 1`
	done
		if [ $flag -eq 1 ]
		then
		echo "The number $num is Not Prime"
		else
		echo "The number $num is Prime"
		fi
	((num++))
done

