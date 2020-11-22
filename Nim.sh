#!/bin/bash

echo "**************************************************"
echo "*********** WELCOME TO THE NIM GAME **************"
echo "**************************************************"
echo "*************** ARE YOU READY ? ******************"
echo "**************************************************"
echo ""
echo ""
echo "What is your name?"
read name
echo ""
echo "Hello, $name!"
echo ""

game_running=true
nbElmt=20

echo "There are 20 sticks"
echo "| | | | | | | | | | | | | | | | | | | |"
echo "You must remove 1 - 3 sticks for each turn, and be the last to remove them."
echo ""
echo "Try to beat the computer!"
echo ""

while [ $nbElmt -gt 0 ]
do
    # PLAYER'S TURN
    echo "..........................................."
    echo "..............PLAYER'S TURN................"
    echo "..........................................."
    echo "How many sticks do you choose to remove?"
    read playerChoice
        if [ $playerChoice -lt 1 ] || [ $playerChoice -gt 3 ]
        then
            echo "Please choose a number between 1 and 3."
            echo ""
            read playerChoice
            let "nbElmt = nbElmt - playerChoice"
            echo ""
            echo "There are >> $nbElmt << sticks left"
            echo ""
        elif [ $playerChoice -ge 1 ] || [ $playerChoice -le 3 ]
        then
            let "nbElmt = nbElmt - playerChoice"
            echo ""
            echo "There are >> $nbElmt << sticks left"
            echo ""
        fi
    # COMPUTER'S TURN
    echo "..........................................."
    echo "............COMPUTER'S TURN................"
    echo "..........................................."
    echo ""
    let "aiChoice = 4 - playerChoice"
    echo "Computer takes >> $aiChoice <<"
    echo ""
    let "nbElmt = nbElmt - aiChoice"
    echo "There are >> $nbElmt << sticks left"
    echo ""
    if [ $nbElmt -eq 0 ]
    then
        echo "*******************************************"
        echo "************** GAME OVER ******************"
        echo "*******************************************"
        game_running=falses
    fi
done