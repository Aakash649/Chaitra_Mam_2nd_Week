#!/bin/bash -x

read -p "Enter the value to be converted :" num;
echo "Enter 1 for Feet to Inch"
echo "Enter 2 for Feet to Meter"
echo "Enter 3 for Inch to Feet"
echo "Enter 4 for Meter to Feet"

read -p "Enter option:" option;

case $option in
1)Feet=`expr $num * 12 | bc`
  echo "Feet conversion are $Feet"
;;
2)Meter=`expr $num * 0.3048 | bc`
  echo "Feet to meter conversion are $Meter"
;;
3)inches=`expr $num / 12 | bc`
  echo "inches to feet conversion are $inches"
;;
4)Feet=`expr $num / 0.3048 | bc`
  echo "Meter to Feet conversion are $Feet"
;;
*)echo "wrong choice"
;;
esac
