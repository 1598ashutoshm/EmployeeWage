#! /bin/bash

echo " Employee Wage Example "

ispresentfulltime=1
ispresentparttime=2
EMP_RATE_PER_HR=20

empcheck=$(( RANDOM % 3 ))   #0/1/2

#condition

case $empcheck in
              $ispresentfulltime) emphrs=8 ;;
              $ispresentparttime) emphrs=4 ;;
              *) emphrs=0 ;;
esac
salary=$((  $EMP_RATE_PER_HR * $emphrs ))
echo $salary


