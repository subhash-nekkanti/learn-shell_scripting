#!/bin/bash

: '
STEPS: sh cleanup.sh /var/roboshop 14 (if user passing loc or not, if passing loc exsits or not)
1.check user passed source dir or not 
2.check source dir exist or not 
3.find the files
4.delete the files, if there are no files found just print no files found older than 14 days
5.delete files if exist and show to user'

#code
R="\e[31m"
G="\e[32m" #instead of repeating this command every where we are storing it in a variables 
Y="\e[33m"
N="\e[0m"
source_dir=$1
days=${2:-14}  #if user is not passing days, we will take 14 days as default
usage(){
    echo "${R}USAGE:: $0 [SOURCE_DIR] [days(optional,default to 14 days)]${N}"
    exit 1

}
if [ -z "$source_dir" ]; then   #check if $source_dir empty or not -z
    echo -e  "ERROR:: MISSING PRAMETERS"
    usage
fi

if [ -d "$source_dir"]; then
    echo "${R}ERROR:: $source_dir doesnot exist${N}"
fi