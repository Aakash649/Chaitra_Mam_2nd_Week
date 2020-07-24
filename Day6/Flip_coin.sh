#!/bin/bash 

head1=0
tail1=0

while [ $head1 -le 11 ]||[ $tail1 -le 11 ]
do
x=$((RANDOM%2))

	if [ $x -ne 1 ]
	then
	echo "Head "
	echo "Head value:" $head1
	head1=`expr $head1 + 1`
	else
	echo "Tail"
	echo "Tail value:" $tail1
	tail1=`expr $tail1 + 1`
	fi

done
