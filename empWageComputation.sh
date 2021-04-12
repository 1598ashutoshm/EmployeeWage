#!/bin/bash

echo "Welcome to Employee Wage"

EMP_RATE_PER_HR=20
empHr=8


# constant
IS_PRESENT=1

#variable
empcheck=$(( RANDOM%2 ))

#condition

if [ $empcheck -eq $IS_PRESENT ]
then
      emphrs=8

else
      emphrs=0
fi

salary=$(( $EMP_RATE_PER_HR * $emphrs ))
