#! /bin/bash

echo " Employee Wage Example "

ispresentfulltime=1
ispresentparttime=2
EMP_RATE_PER_HR=20
noofworkingdays=20
totalworkinghrs=0

for (( day=1; day<=$noofworkingdays; day++ ))
do

empcheck=$(( RANDOM % 3 ))   #0/1/2

#condition

case $empcheck in
              $ispresentfulltime) emphrs=8 ;;
              $ispresentparttime) emphrs=4 ;;
              *) emphrs=0 ;;
esac

totalworkinghrs= $(( $totalworkinghrs + $emphrs ))
#salary=$((  $EMP_RATE_PER_HR * $emphrs ))
done

salary=$((  $EMP_RATE_PER_HR * $totalworkinghrs ))



