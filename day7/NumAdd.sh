#!/bin/bash -x

read -p "Enter the first No: " a;
read -p "Enter the second No: " b;
read -p "Enter the third No: " c

x=`expr $a + $b + $c`;


echo $x
