#!/bin/bash
var=variable
present_country=INDIA

echo "$var"
echo "I am in $present_country"
echo "PID of $0 : $$" #$0 script name $$ PID of script

sh 21-script.sh       #calling other script using sh can be using only if there is no relation between 2 scripts.


