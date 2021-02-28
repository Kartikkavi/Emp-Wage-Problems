#!/bin/bash -x

empCheck=$((RANDOM%2))
ispresent=1
if [ $empCheck -eq $ispresent ]
then
empRatePerHr=20
empHrs=8
salary=$(($empHrs*$empRatePerHr))
else 
salary=0
fi
