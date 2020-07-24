#!/bin/bash 
function prime(){

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
}

function  palin(){
s=0
rev=""

temp=$num

while [ $num -gt 0 ]
do

    s=$(( $num % 10 ))


    num=$(( $num / 10 ))
    rev=$( echo ${rev}${s} )
done

if [ $temp -eq $rev ];
then
    echo "Number is palindrome"
else
    echo "Number is NOT palindrome"
fi

}


read -p "Enter the number:" num;
prime
palin
