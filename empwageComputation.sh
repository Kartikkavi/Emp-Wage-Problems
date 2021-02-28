#!/bin/bash -x

ispartTime=1
isfullTime=2
empRatePerHr=20

randomCheck=$((RANDOM%3))
if
	[ $ispartTime -eq $randomCheck ]
then
	empHr=8
elif
	[ $isfullTime -eq $randomCheck ]
then
	empHr=4
else
	empHr=0
fi
 salary=$(($empHr*$empRatePerHr))
