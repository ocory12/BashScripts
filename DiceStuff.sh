#!/bin/bash
declare -i DiceOne=0
declare -i DiceTwo=0
declare -t UserGuess=0
declare -i DiceTotal=0




let DiceOne=$(( ( RANDOM %6) +1))
		
let DiceOne=$(( ( RANDOM %6) +1))
		
		


let DiceTotal=$DiceOne+$DiceTwo

echo "What Is Your Guess?"
read UserGuess



if [ $UserGuess == $DiceTotal ] 
	then 
		echo "You Guest Right"
		
elif [ $UserGuess -gt $DiceTotal ]
	then
		echo "To High"
	else 
		echo "To Low"
		
fi