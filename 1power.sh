#!/bin/bash -x

read -p "enter a number : " n

a=1
for ((count=1; count<=$n; count++))
do
	a=$((2**count))
     if [ $a -le 256 ]
     then
	echo $a
     fi
done

