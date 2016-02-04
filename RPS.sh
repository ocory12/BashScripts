#!/bin/bash

declare -i ROCK=0
declare -i PAPER=1
declare -i SCISSORS=2
declare -i PlayerChoice=0
declare -i CompChoice=0
declare -i NumberOfRounds=0
declare -i CompWins=0
declare -i PlayerWins=0



echo "How Many Rounds?"

#Read The Number Of Rounds

read NumberOfRounds

sleep 1


for i in $(seq 1 $NumberOfRounds)

	do
		
		echo "For Rock press: 0"
		echo "For Paper press: 1"
		echo "For Scissors press: 2"
		
		#gives options for rock,paper and scissors
		
		echo "Choose:"
		read PlayerChoice
		
		#reads what the player has chosen
	
	
	if [ $PlayerChoice == $ROCK ]
		then
			echo "!You Chose Rock!"
			
			#if the player chooses rock
	
	fi
	
	if [ $PlayerChoice == $PAPER ]
		then 
			echo "!You Chose Paper!"
	
			#if the player chooses paper		
	
	fi
		
	if [ $PlayerChoice == $SCISSORS ] 
		then
			echo "!You Chose Scissors!"
			
			#if the player chooses scissors
		
	fi



	 let CompChoice=$(( ( RANDOM % 3 )  + 1 ))

	#The randomiser ^
	
	if [ $CompChoice == $ROCK ] 
		then
			echo "!Computer Chose Rock!"
			
			#if computer chooses rock
	
	fi
	
	if [ $CompChoice == $PAPER ] 
		then 
			echo "!Computer Chose Paper!"

			#if computer chooses paper

	fi

	if [ $CompChoice == $SCISSORS ] 
		then 
			echo "!Computer Chose Scissors!"
			
			#if computer chooses scissors
			
	fi
		
		
	if [ $CompChoice == $PlayerChoice ]
		then
			echo "Draw"
			
			#if computer and player choose the same; then a draw
		
	fi
		
	
    if [ $CompChoice == $ROCK ] && [ $PlayerChoice == $PAPER ]
    	then
        	echo "Player wins."
        	let PlayerWins=$PlayerWins+1
        
			#if computer chooses rock an player chooses paper; then player wins 	
        	
    fi
    	
     if [ $CompChoice == $ROCK ] && [ $PlayerChoice == $SCISSORS ]
   		 then
				echo "Computer wins."
        		let CompWins=$CompWins+1
     
				#if computer chooses rock and player chooses scissors; then computer wins   
     
    fi

    if [ $CompChoice == $PAPER ] && [ $PlayerChoice == $SCISSORS ]
    	then
       		 echo "Player wins."
       		 let PlayerWins=$PlayerWins+1
        
			#if computer chooses paper and player chooses scissors; then player wins	
	
    fi

    if [ $CompChoice == $PAPER ] && [ $PlayerChoice == $ROCK ]
   		 then
        	echo "Player wins."
       		let PlayerWins=$PlayerWins+1
        
			#if computer chooses paper and player chooses rock; then player wins
        
    fi

    if [ $CompChoice == $SCISSORS ] && [ $PlayerChoice == $PAPER ]
    	then
        	echo "Computer wins."
        	let CompWins=$CompWins+1
        
			#if computer chooses scissors and player chooses paper; then computer wins
      
    fi

    if [ $CompChoice == $SCISSORS ] && [ $PlayerChoice == $ROCK ]
   	 	then
       		 echo "Player wins."
       		 let PlayerWins=$PlayerWins+1
        
			#if computer chooses scissors and player chooses rock; then player wins
        
    fi
	
	echo "!Press Any Key To Continue!"
	read
	
	#wait for a key press to continue
		
done

clear 

#clears the terminal


echo "Player Wins: $PlayerWins"

#how many rounds the player wins


echo "Computer Wins: $CompWins"

#how many rounds the computer wins 


if [ $PlayerWins -gt $CompWins ]
	then

	    echo "Player wins!"

		#if player score is greater than computer score; then player wins
	
	elif [ $CompWins -gt $PlayerWins ]
	
	then
	    echo "Computer wins!"
	    
		#if computer score is higher than player score; then computer wins
	    
	else
	    echo "Draw!"
	    
		#if neither player or computer has a higher score then there is a draw

fi	
