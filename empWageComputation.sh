#!/bin/bash

ispresentfulltime=1
ispresentparttime=2
EMP_RATE_PER_HR=20
noofworkingdays=20
maxworkinghrs=50

totalworkinghrs=0
totalworkingdays=0

#Function

function getworkhours(){
         local empcheck=$1
         local emphrs=0
         case $empcheck in
                 $ispresentfulltime) emphrs=8 ;;
                 $ispresentparttime) emphrs=4 ;;
                 *) emphrs=0 ;;
         esac
         echo $emphrs

}
function getwageforday(){

         local emphrs=$1
         local wages=$(( $EMP_RATE_PER_HR * $emphrs ))
         echo $wages
}


while [ $totalworkingdays  -lt $noofworkingdays ] &&
      [ $totalworkinghrs  -lt $maxworkinghrs ]
do
     totalworkingdays=$(( $totalworkingdays + 1 ))
     empcheck=$(( RANDOM % 3 ))   #0/1/2
     emphrs="$( getworkhours $empcheck )"
     dailywages[$totalworkingdays]=$(( $EMP_RATE_PER_HR * $emphrs ))
     totalworkinghrs=$(( $totalworkinghrs + $emphrs ))

done
salary=$((  $EMP_RATE_PER_HR * $totalworkinghrs ))
echo ${!dailywages[*]}
echo ${dailywages[*]}
