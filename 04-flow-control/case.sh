#!/bin/bash

clear
echo "Expense allocation"
echo
read -p "Enter your city:" city

case $city in 
    "Glasgow")desc="Capital of scotland";;
    "Kolkata" | "Mumbai")desc="Metro city in india";;
    "Newyork")desc="City of USA";;
    *)clear; echo "Invalid city : " $city;exit;;
esac
clear
echo "City description:" $desc
echo  
