#!/bin/bash
while true
do
    clear 
    echo "To leave, type exit"
    echo
    read -p "What you say?" choice
    if test $choice = "exit"
    then
    {
        break
    }
    fi
done