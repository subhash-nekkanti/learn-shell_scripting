#!/bin/bash

echo "please enter your marks"
read marks
#lt -> lessthan 
if [ $marks -lt 35 ]; then
    echo "fail"
elif [ $marks -lt 45 ]; then
    echo "c grade"
elif [ $marks -lt 65 ]; then
    echo "b grade"
elif [ $marks -lt 75 ]; then
    echo "b+ grade"
elif [ $marks -lt 85 ]; then
    echo "a grade"
else
    echo "a grade outstanding"
fi #fi denotes that if condition has ended 

