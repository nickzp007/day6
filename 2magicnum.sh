#!/bin/bash

echo "Guess the number between 1 to 100"

start=1
last=100
mid=0

mid=$(((start+last)/2))

isMagicNumber=1

while (($isMagicNumber==1))

do
if (($start == $mid))
then
isMagicNumber=0
echo "The magic number is $start "
else
read -p "is number is less than $mid when it yes:" choice
fi

if [[ "$choice" == "yes" ]]
then
last=$mid
else
start=$mid
fi

mid=$(((start+last)/2))

done
