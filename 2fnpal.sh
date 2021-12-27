#!/bin/bash -x


function f()
{

n=$1
lastdigit=0
rev=0

while [ $n -gt 0 ]
do
    lastdigit=$(( $n % 10 ))
    rev=$(( $rev * 10 + $lastdigit ))
    n=$(( $n / 10 ))
done

if [ $rev -eq $1 ]
 then
      echo " number $1 is palindrome"
   exit
else
     echo "number $1 is not palindrome"
fi
}

read -p " enter first number ; " num1
read -p " enter second number ; " num2

f $num1
f $num2
