#!/bin/bash -x

read -p "enter a number : " n

f=1
 for((count=1; count<=n; count++))
{
	f=$((f*count))
}

echo "factorial of number is $f"
