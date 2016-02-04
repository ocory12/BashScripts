#!/bin/bash

declare -i ROCK=1
declare -i PAPER=2
declare -i SCISSORS=3
declare -i playerchoice=0
declare -i compchoice=0
declare -i numberofrounds=0
declare -i playerwins=0
declare -i compwins=0

clear
echo "Number of rounds: "
read numberofrounds

for i in $(seq 1 $numberofrounds)
do
    clear
    echo "Your wins: $playerwins"
    echo "Computer wins: $compwins"
    echo ""
    echo "1) Rock"
    echo "2) Paper"
    echo "3) Scissors"

    echo "Choose: "
    read playerchoice

    if [ $playerchoice == $ROCK ]
    then
        echo "You chose ROCK"
    fi

    if [ $playerchoice == $PAPER ]
    then
        echo "You chose PAPER"
    fi

    if [ $playerchoice == $SCISSORS ]
    then
        echo "You chose SCISSORS"
    fi

    let compchoice=$(( ( RANDOM % 3 )  + 1 ))

    if [ $compchoice == $ROCK ]
    then
        echo "Computer chose ROCK"
    fi

    if [ $compchoice == $PAPER ]
    then
        echo "Computer chose PAPER"
    fi

    if [ $compchoice == $SCISSORS ]
    then
        echo "Computer chose SCISSORS"
    fi

    if [ $compchoice == $playerchoice ]
    then
        echo "Draw."
    fi

    if [ $compchoice == $ROCK ] && [ $playerchoice == $PAPER ]
    then
        echo "Player wins."
        let playerwins=$playerwins+1
    fi

    if [ $compchoice == $ROCK ] && [ $playerchoice == $SCISSORS ]
    then
        echo "Computer wins."
        let compwins=$compwins+1
    fi

    if [ $compchoice == $PAPER ] && [ $playerchoice == $SCISSORS ]
    then
        echo "Player wins."
        let playerwins=$playerwins+1
    fi

    if [ $compchoice == $PAPER ] && [ $playerchoice == $ROCK ]
    then
        echo "Player wins."
        let playerwins=$playerwins+1
    fi

    if [ $compchoice == $SCISSORS ] && [ $playerchoice == $PAPER ]
    then
        echo "Computer wins."
        let compwins=$compwins+1
    fi

    if [ $compchoice == $SCISSORS ] && [ $playerchoice == $ROCK ]
    then
        echo "Player wins."
        let playerwins=$playerwins+1
    fi

    echo "Press any key to continue."
    read
done
clear
echo "Player wins: $playerwins"
echo "Computer wins: $compwins"

if [ $playerwins -gt $compwins ]
then
    echo "Player wins!"
elif [ $compwins -gt $playerwins ]
then
    echo "Computer wins!"
else
    echo "Draw!"
fi
