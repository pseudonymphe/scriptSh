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
	echo ""
	echo ""
	echo "............|  ^  |............"
	echo "|                             |"
	echo "|                             |"
	echo "|                            ---"
	echo "|           ╚(ಠ_ಠ)=┐          > "
	echo "|                            ---"
	echo "|                             |"
	echo "|                             |"
	echo "..............................."
	echo ""
	echo ""
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
	echo ""
	echo ""
	echo "............|  ^  |............"
	echo "|                             |"
	echo "|                             |"
	echo "---                         ---"
	echo " <         ᕕ( ಠ‿ಠ)ᕗ         > "
	echo "---                         ---"
	echo "|                             |"
	echo "|                             |"
	echo "..............................."
	echo ""
	echo ""
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
	echo ""
	echo ""
	echo "............|  ^  |............"
	echo "|                             |"
	echo "|                             |"
	echo "---                           |"
	echo " <         ᕙ(⇀‸↼‶)ᕗ          |"
	echo "---                           |"
	echo "|                             |"
	echo "|                             |"
	echo "..............................."
	echo ""
	echo ""
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
	echo ""
	echo "........(╯︵╰,).........."
	echo ""
	game_running=falses
    elif [ $room_number -eq 5 ]
    then
	echo "There is 1 door in your room: (s)outh, where do you want to go?"
	echo ""
	echo ""
	echo "..............................."
	echo "|                             |"
	echo "|                             |"
	echo "|                             |"
	echo "|            ಠ╭╮ಠ             |"
	echo "|                             |"
	echo "|                             |"
	echo "|                             |"
	echo "............|  v  |............"
	echo ""
	echo ""
	read choice
	if [ "$choice" = "s" ]
	then
	    clear
	    echo "> going south..."
		room_number=2
	else
	    echo "THIS CHOICE DOESN'T EXIST"
	fi
    elif [ $room_number -eq 6 ]
    then
	echo ""
	echo ""
	echo ">>>>>>>>>>>> You found the EXIT... Congratulations :)"
	echo ""
	echo ""
	echo ".................╰( ⁰ ਊ ⁰ )━☆ﾟ.*･｡ﾟ.................."
	echo ""
	echo ""
	read choice
	game_running=falses
    fi
done