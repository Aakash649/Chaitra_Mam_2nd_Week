#!/bin/bash -x

declare -A dict

a=0
b=0
c=0
d=0
e=0
f=0

while [[ $a -lt 10 && $b -lt 10 && $c -lt 10 && $d -lt 10 && $e -lt 10 && $f -lt 10 ]]
do
x=$(( $((RANDOM % 6))+1 ))
echo " the die roll value is "$x
case $x in
1) a=`expr $a + 1`
;;
2) b=`expr $b + 1`
;;
3) c=`expr $c + 1`
;;
4) d=`expr $d + 1`
;;
5) e=`expr $e + 1`
;;
6) f=`expr $f + 1`
;;
esac

done


dict[1]=$a
dict[2]=$b
dict[3]=$c
dict[4]=$d
dict[5]=$e
dict[6]=$f

echo  ${!dict[@]/n} "=" ${dict[@]/n}
