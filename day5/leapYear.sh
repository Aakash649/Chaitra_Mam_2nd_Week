#!/bin/bash -x


echo "Enter the year (YYYY)"
read year

y=`expr $year % 4`
r=`expr $year % 100`
t=`expr $year % 400`

if [[ $y == 0 && $r != 0 || $t == 0 ]]; 
then
    echo "$year is a leap year"
else
 echo "$year is not a leap year"

fi
