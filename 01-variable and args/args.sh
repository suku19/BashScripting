#!/bin/bash

# Find file owned by user..
if test "$1" = ""
    then
        echo "You must supply a username."
        exit
fi
if test "$2" = ""
    then
        echo "You must supply a file sydtem search starting point."
        exit
fi
clear
echo
echo "Please wait, seeking files owned by" $1
echo
find $2 -user $1
