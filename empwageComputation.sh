#!/bin/bash -x
ispartTime=1
isfullTime=2
empRatePerHr=20
empcheck=$((RANDOM%3))

case $empcheck in
		$isfullTime)
			empHr=8
;;
		$ispartTime)
		empHr=4
;;
*)
		empHr=0
;;
esac
salary=$(($empHr*$empRatePerHr))
