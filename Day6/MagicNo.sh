#!/bin/bash -x

echo "Choose a number between 1 to 100"
l=1
h=100
mid=50
while [ $l -le $h ]
do
	echo "Enter 1 if number is less than mid"
	echo "Enter 2 if number is greter than mid"
 	echo "Enter 3 if number is equal than mid"
	read value

	case $value in
	1) h=$(($mid-1))
	;;
	2) l=$(($mid+1))
	;;
	3) echo "The value is $mid"
		break
	;;
	*) echo "Wrong Choice"
		break
	;;
	esac
	mid=$(( ($l+$h)/2 ))
done
