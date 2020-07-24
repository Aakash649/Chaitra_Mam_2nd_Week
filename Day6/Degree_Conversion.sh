#!/bin/bash -x

function degF(){

read -p "Enter the celsieus value: " c

while [ $c -gt 0 ] && [ $c -lt 100 ]
do
F= $c * (9/5) + 32 | bc
done

echo "The Fahrenheit value is $F"


}

function degC(){

read -p "Enter the Fahrenheit value: " F

while [ $F -gt 32 ] && [ $F -lt 212 ]
do
C=`expr ((`expr $F -32`)) * ((`expr 5 / 9`)) | bc`
done

echo "The celsius value is $C "

}



echo "Enter 1 for Fahrenheit Conversion"
echo "Enter 2 for Celsius Conversion"

read -p "Enter the temperature value: " value;


case $value in
1) degF
;;
2) degC
;;
*) echo "Wrong choice"
;;
esac
