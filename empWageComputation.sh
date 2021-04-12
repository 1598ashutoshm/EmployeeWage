#!/bin/bash

echo "Welcome to Employee Wage"

# constant
IS_PRESENT=1

#variable
empcheck=$(( RANDOM%2 ))

#condition

if [ $empcheck -eq $IS_PRESENT ]
then
      echo " Employee Present "

else
      echo " Employee Absent "
fi

