
#! /bin/bash
echo " Employee Wage Example "

ispresentfulltime=1
ispresentparttime=2
EMP_RATE_PER_HR=20

empcheck=$(( RANDOM % 3 ))   #0/1/2

#condition

if [ $empcheck -eq $ispresentfulltime ]
then
      emphrs=10
elif [ $empcheck -eq $ispresentparttime ]
then
      emphrs=8
else
      emphrs=0
fi

salary=$(( $EMP_RATE_PER_HR * $emphrs ))

echo $salary


