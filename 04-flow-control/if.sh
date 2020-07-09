#!/bin/bash

#Condition not equals
if test $USER != "root"
then
{
    clear 
    echo "You are not root user."
}
else
{
    echo "You are root user"
}
fi

#Condition greater than
numdays=400

if test $numdays -gt 300
then
{ 
    echo "Over budget.."
}
fi

#Condition for directory exit (-d for directory and -e for file regardless of type)

if test -d /dev
then
{ 
    echo "Directory does exit."
}
fi