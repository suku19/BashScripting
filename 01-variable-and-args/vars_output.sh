#!/bin/bash


echo
read -p "Enter the name of the city:" cityname
echo "Computer: " $HOSTNAME >> $HOSTNAME"_stats.txt"
echo "City:" $cityname
echo "Linux kernel info:" `uname -a` >> $HOSTNAME"_stats.txt"
echo "Shell version:" $BASH_VERSION >> $HOSTNAME"_stats.txt"
clear
echo
echo $HOSTNAME"_stats.txt file written successfully."
echo