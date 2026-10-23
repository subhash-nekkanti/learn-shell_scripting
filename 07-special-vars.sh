#!/bin/bash
echo "all args passed to the script : $@ "  #  $@ prints all args given in script
echo "total no of args passed to the script are : $# "  #  $# prints no of args given in script
echo " first variable passed : $1"
echo " script name : $0 "
echo "realpath: $(realpath $0)"

echo "who is running current script :$user"

