#!/bin/bash

#!/bin/bash
echo "*********************************************"
echo "************ Welcome to the MAZE ************"
echo "*********************************************"
echo ""
echo "You are lost inside a Maze, try to escape..."
echo ""

game_running=true
room_number=2

while [ "$game_running" = true ]
do
    if [ $room_number -eq 1 ]
    then
	echo "There are 2 doors in your room: (n)orth, (e)ast, where do you want to go ?"
	read choice
	if [ "$choice" = "n" ]
	then
	    clear
	    echo "> going to north..."
	    room_number=4
	elif [ "$choice" = "e" ]
	then
	    clear
	    echo "> going to east..."
	    room_number=2
	else
	    echo "THIS CHOICE DOESN'T EXIST!"
	fi
    elif [ $room_number -eq 2 ]
    then
	echo "There are 3 doors in your room: (n)orth, (w)est, (e)ast, where do you want to go ?"
	read choice
	if [ "$choice" = "n" ]
	then
	    clear
	    echo "> going to north..."
	    room_number=5
	elif [ "$choice" = "w" ]
	then
	    clear
	    echo "> going to west..."
	    room_number=1
	elif [ "$choice" = "e" ]
	then
	    clear
	    echo "> going to east..."
	    room_number=3
	else
	    echo "THIS CHOICE DOESN'T EXIST!"
	fi
    elif [ $room_number -eq 3 ]
    then
	# TODO: complete
	echo "There are 2 doors in your room: (n)orth, (w)est, where do you want to go ? "
	read choice
	if [ "$choice" = "n" ]
	then
	    clear
	    echo "> going north..."
	    room_number=6
	elif [ "$choice" = "w" ]
	then
	    clear
	    echo "> going east..."
	    room_number=2
	else
	    echo "THIS CHOICE DOESN'T EXIST!"
	fi
    elif [ $room_number -eq 4 ]
    then
	echo ">>>>>>>>>>>> It's a trap... you are DEAD :/"
	game_running=falses
    elif [ $room_number -eq 5 ]
    then
# TODO: complete
	echo "There is 1 door in your room: (s)outh, where do you want to go?"
	read choice
	if [ "$choice" = "s" ]
	then
	    clear
	    echo "> going south..."
	else
	    echo "THIS CHOICE DOESN'T EXIST"
	fi
    elif [ $room_number -eq 6 ]
    then
	echo ">>>>>>>>>>>> You found the EXIT... Congratulations :)"
	read choice
	game_running=falses
    fi
done
