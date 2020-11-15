#!/bin/bash

echo "**************************************************"
echo "*********** WELCOME TO THE NIM GAME **************"
echo "**************************************************"
echo "*************** ARE YOU READY ? ******************"
echo "**************************************************"
echo ""
echo ""
echo "What is your name ?"
read name
echo "Hello, $name !"
echo ""
echo ""


game_running=true
let num

while [ "$game_running" = true ]
do
    echo "| | | | | | | | | | | | | | | | | | | |"
    echo "There are $num sticks. You can take between 1 and 3. How many do you choose ?"
    read choice
    if [ "$choice" -lt 1 ] && [ "$choice" -gt 3 ]
    then
        echo "Please choose between 1 and 3."
    elif [ "$choice" -eq 1 ] || [ "$choice" -eq 3 ]
    then
        echo "Ok"
        $num == $num-$choice
    fi
done