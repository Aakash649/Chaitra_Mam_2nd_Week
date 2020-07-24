#!/bin/bash

read -p "Enter the number:" num;

case $num in
1) echo "Unit"
;;
10) echo "Tens"
;;
100) echo "Hundred"
;;
1000) echo "Thousand"
;;
*)echo "Wrong Number"
;;
esac
