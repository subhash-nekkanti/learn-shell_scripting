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
    echo -e "${R}USAGE:: $0 [SOURCE_DIR] [days(optional,default to 14 days)]${N}"
    exit 1

}
if [ -z "$source_dir" ]; then   #check if $source_dir empty or not -z
    echo  "ERROR:: MISSING PRAMETERS"
    usage
fi

if [ -d "$source_dir" ]; then
    echo -e "${R}ERROR:: $source_dir doesnot exist${N}"
fi

echo "Scanning files older than $days in $source_dir"
files_to_delete=$(find $source_dir -name "*.log" -type f -mtime +$days)

if [ -z "$files_to_delete" ]; then
    echo "No log files found older than +$days"
    exit 0
fi

while IFS= read -r line
do
    echo "files to be deleted : $line"
    rm -f $line
    echo "file deleted : $line"

done <<< "$files_to_delete"   #< --> for filr inputs.   <<< --> cariables as in inputs



: '
32.200.78.39 | 172.31.31.4 | t3.micro | https://github.com/subhash-nekkanti/learn-shell_scripting.git
[ ec2-user@ip-172-31-31-4 ~/learn-shell_scripting ]$ sh 23-cleanup.sh /var/log/roboshop
ERROR:: /var/log/roboshop doesnot exist
Scanning files older than 14 in /var/log/roboshop
23-cleanup.sh: line 35: [: /var/log/roboshop/cart.log: binary operator expected
files to be deleted : /var/log/roboshop/cart.log
files to be deleted : /var/log/roboshop/shipping.log

crontab -e 
insert
5 starts helloworld every minute it prints
crontab -e
insert mode
sh (always give full path in crontab )/home/ec2-user/learn-shell/23-cleanup.sh /var/log/roboshop  --->deletes logs every minute 
sudo tail -f /var/log/cron --->to check logs
'