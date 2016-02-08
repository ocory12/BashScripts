#!/bin/bash

#Copyright (c) 2016 Ollie Cory All Rights Reserved.


declare -i UserInput=0
declare -i Prime=0
declare -i Counter=2
declare -i result=0

echo "Enter A Number"
read UserInput

while [ $Counter -lt $UserInput ]

  do

    echo "Counter Is $Counter and result is $result"

    result=$(awk "BEGIN {print $UserInput/$Counter}")



    let Counter=$Counter+1

done
