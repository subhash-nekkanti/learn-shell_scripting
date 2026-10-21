#!/bin/bash

START_TIME=$(date +%s)
echo "script started execution at : $START_TIME"

sleep 10

END_TIME=$(date +%s)
echo "script completed execution at : $END_TIME"

TOTAL_TIME_TAKEN=$(($STRAT_TIME - $END_TIME))
echo "total time taken for script execution : $TOTAL_TIME"
