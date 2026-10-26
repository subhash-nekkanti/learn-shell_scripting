#!/bin/bash
logs_folder="/var/logs/shell_practice"
logs_file=${logs_folder}/${0}.log

validation(){
    if [ $1 -ne 0 ]; then # $? gives the exit status of previous command if it is 0 then only it proceeds to next steps
        echo "${2} FAILED"
    exit 1  #(nginxxxxx) installation failed (exit status is not 0) so it just prints and terminates it wont install my sql
    else 
        echo "${2} SUCCESS"
    fi
}
user_id=$(id -u)

if [ $user_id -ne 0 ]; then
    echo "please run this script eith sudo access"
    exit 1
fi
dnf install nginx -y
validation $? "nginx installation..."

dnf install mysql -y
validation $? "mysql installation..."
