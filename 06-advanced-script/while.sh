#!/bin/bash

clear

choice="0"

trap ctrl_c 2

ctrl_c()
{
    clear
    echo "Cleaning up temp files from datafiles/tmp dir..."
    for i in ../datafiles/tmp/*
    do
        if !(test -d $i)
        then
            rm $i
        fi
    done
    exit 1
}

while (($choice != "1"))
do
    clear
    echo
    echo "Please select an option"
    echo "1 - Exit"
    echo
    read choice
done