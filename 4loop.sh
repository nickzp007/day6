#!/bin/bash

read -p "Enter a number : " n

fact=1

for((count=2;count<=n;count++))
{
  fact=$((fact * count))
}

echo $fact
