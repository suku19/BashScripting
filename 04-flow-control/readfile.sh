#!/bin/bash

clear

filetoread=../datafiles/cities.txt
echo "List of cities:"
echo

while read linefromfile 
do
    echo $linefromfile
done < $filetoread