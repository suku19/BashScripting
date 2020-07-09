#!/bin/bash

clear
totalsize=0
currentfilesize=0

for currentfile in ./*
do
    currentfilesize=`ls -l $currentfile | tr -s " " | cut -f5 -d " "`
    let totalsize=$currentfilesize+$totalsize
    echo $currentfilesize
done
echo
echo "Total file size is: " $totalsize