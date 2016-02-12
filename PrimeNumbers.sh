#!/bin/bash

#Copyright (c) 2016 Ollie Cory All Rights Reserved.


declare -i UserInput=0
declare -i Prime=0
declare -i Counter=2
declare result=0

echo "Enter A Number"
read UserInput

while [ $Counter -lt $UserInput ]

  do



    result=$(awk "BEGIN {print $UserInput/$Counter}")

    echo "Counter Is $Counter and result is $result"

    let Counter=$Counter+1

done

#___   __       _     _     __
#|_ | |    |   / \   / \   |__
#|    |    |  /   \_/   \  |__
