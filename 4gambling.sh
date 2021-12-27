#!/bin/bash -x

number=100
valid=True
betcount=0
wincount=0


while [ $valid ]
do
        var=$(( RANDOM%2 ))
        #number=$(( $number-1 ))
        betcount=$(( $betcount+1 ))
        if [ $var -eq 1 ]
        then
                number=$(( $number+1 ))
                wincount=$(( $wincount+1 ))
        else
                number=$(( $number-1 ))
        fi
        if [[ $number -eq 200 || $number -eq 0 ]]
        then
        break
        fi
done

echo "number is" $number
echo "bet count is" $betcount
echo "wincount is" $wincount
