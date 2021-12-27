#!/bin/bash -x

function fn()
{
n=$1
for((count=2; count<=n/2; count++))
do
  if [ $(($n%count)) -eq 0 ]
   then
    echo "$1 is not a prime number"
   exit
  fi
done
echo "$1 is a prime number"


num=$1
lastdigit=0
rev=0

while [ $num -gt 0 ]
do
    lastdigit=$(( $num % 10 ))
    rev=$(( $rev * 10 + $lastdigit ))
    num=$(( $num / 10 ))
done

if [ $rev -eq $1 ]
 then
      echo " number $1 is palindrome"
   exit
else
     echo "number $1 is not palindrome"
fi

}

read -p "enter a number : " a

fn $a
