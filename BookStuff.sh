#!/bin/bash
declare -i NumberBooksBought
declare -i TotalValueeBooksBought

echo "Enter Number Of Books"
read NumberBooksBought

echo "Enter In Total Value"
read TotalValueeBooksBought

if [ $NumberBooksBought -gt 5 -a $TotalValueeBooksBought -gt 50 ] || [ $NumberBooksBought -gt 10 ]  

	then 
		
		echo "Award Bonus"
		
	else 
		
		echo "Don't Award Bonus"
fi


