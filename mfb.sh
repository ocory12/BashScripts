#!/bin/bash

declare Name=Test
declare -i 
declare -i Number=0

echo "Start Script (y/n)"
read answer

if [ $answer == y ]
	then
		
		echo "How Many Files?"
		read Number
	fi
	
while [ 
