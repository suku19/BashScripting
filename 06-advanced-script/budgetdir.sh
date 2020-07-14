#!/bin/bash

clear
echo  "Bugdet directory creator"

echo
read -p "Enter last 2 digits of STARTING budget year:" start
read -p "Enter last 2 digits of ENDING budget year:" end
echo
# -p will create full hierarchy if it's not there 
eval mkdir -p ../datafiles/budgets/20{$start..$end}
clear
echo "Directories that exist under ../datafiles/budgets"
echo
ls ../datafiles/budgets