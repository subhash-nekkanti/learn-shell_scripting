#!/bin/bash
user_id=$(id -u)
logs_folder="/var/logs/shell_practice"
logs_file=${logs_folder}/${0}.log

mkdir -p $logs_folder

validation(){
    if [ $1 -ne 0 ]; then # $? gives the exit status of previous command if it is 0 then only it proceeds to next steps
        echo "${2} FAILED" | tee -a $logs_file
    exit 1  #(nginxxxxx) installation failed (exit status is not 0) so it just prints and terminates it wont install my sql
    else 
        echo "${2} SUCCESS" | tee -a logs_file
    fi
}

if [ $user_id -ne 0 ]; then
    echo "please run this script with sudo access"
    exit 1
fi
for package in $@
do 
    echo "going to install : $package"
    dnf install {package} -y &>> $logs_file
    validate $? "installing {package}..."

done