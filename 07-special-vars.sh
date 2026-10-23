#!/bin/bash
echo "all args passed to the script : $@ "  #  $@ prints all args given in script
echo "total no of args passed to the script are : $# "  #  $# prints no of args given in script
echo "first variable passed : $1"
echo "script name : $0 "
echo "realpath: $(realpath $0)"

echo "who is running current script :$USER"
echo "Directory of the current script : $PWD"
echo "Home directory of the current user: $HOME"
echo "PID of current script : $$"

sleep 10 &
echo "PID of the command running in the background : $!"
wait ! # script waits until $! command completes
echo "Line NUmber : $LINENO"
echo "Previous command exit status : $?"
echo "total time executed for this script " $SECONDS"

