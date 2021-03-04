#!/bin/bash

IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=100;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

totalEWorkingHr=0;
totalWorkingDays=0;

while [[ $totalWorkHours -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]] 
do
  (( totalWorkingDays++ ))
        workHours=$((RANDOM%3))
         case $workHours in
         $IS_FULL_TIME)
          workHours=8
                   ;;
        $IS_PART_TIME)
             workHours=4
                   ;;
      *)
  workHours=0
      ;;
esac
echo $workHours
        totalWorkHours=$(($totalWorkHours+$workHours))

 done

totalSalary=$(($totalWorkHours*$EMP_RATE_PER_HR));

echo "salary of an Employee= "$totalSalary
