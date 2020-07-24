#!/bin/bash -x

declare -A months

jan=0
feb=0
mar=0
apr=0
may=0
june=0
july=0
aug=0
sep=0
oct=0
nov=0
dec=0

for (( i=1; i<=50; i++))
do
x=$(( $((RANDOM % 12)) + 1 ))

case $x in
1)jan=`expr $jan + 1`
;;
2)feb=`expr $feb + 1`
;;
3)mar=`expr $mar + 1`
;;
4)apr=`expr $apr + 1`
;;
5)may=`expr $may + 1`
;;
6)june=`expr $june + 1`
;;
7)july`expr $july + 1`
;;
8)aug=`expr $aug + 1`
;;
9)sep=`expr $sep + 1`
;;
10)oct=`expr $oct + 1`
;;
11)nov=`expr $nov + 1`
;;
12)dec=`expr $dec + 1`
;;
esac

done


months[January]=$jan
months[Feburary]=$feb
months[March]=$mar
months[April]=$apr
months[May]=$may
months[June]=$june
months[July]=$july
months[August]=$aug
months[September]=$sep
months[October]=$oct
months[November]=$nov
months[December]=$dec


echo ${!months[@]/n} "=" ${months[@]/n}
