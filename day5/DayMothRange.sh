#!/bin/bash -x

read -p "Enter the day of the month: " day;
read -p "Enter the Month:" month;

if [ $month -gt 2 ] && [ $month -lt 7 ] 
then
	if [ $month -eq 3 ] && [ $day -lt 20 ] 
	then
		echo "False"
	elif [ $month -eq 6 ] && [ $day -gt 20 ] 
	then
		echo "False"
	else
		echo "True"
	fi
else 
	echo "False"
fi
