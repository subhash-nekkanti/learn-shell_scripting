#!/bin/bash
echo "All args passed to the script : $@ "  #  $@ prints all args given in script
echo "Total no of args passed to the script are : $# "  #  $# prints no of args given in script
echo "First variable passed : $1"
echo "Script name : $0 "
echo "Realpath: $(realpath $0)"

echo "Who is running current script :$USER"
echo "Directory of the current script : $PWD"
echo "Home directory of the current user: $HOME"
echo "PID of current script : $$"

sleep 10 &
echo "PID of the command running in the background : $!"
wait $! # script waits until $! command completes
echo "Line NUmber : $LINENO"
echo "Previous command exit status : $?"
echo "Total time executed for this script  $SECONDS"

