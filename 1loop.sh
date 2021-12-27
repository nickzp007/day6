#!/bin/bash -x

read -p  "Enter any power of 2 (in number) : " n

for((count=0; count<=$n; count++))
  do
      a=$((2**$count))
      echo $a
  done
