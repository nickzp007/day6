#!/bin/bash

read -p "enter number : " n
for ((count=1; count<=n; count++))
do
        var1=1/$count
        series1=$series1+$var1
        var=$(echo | awk '{ print '1/$count'}')
        series=$(echo | awk  '{print '$series+$var'}')
done

echo "sum of the series" $series1 "is" $series
