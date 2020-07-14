#!/bin/bash
clear
set -u # any undefine variable will throw error
read -p "Enter username:" username
echo
echo "Your username is:" ${username:=default123}
echo

echo "This is last line." $undefine_variable