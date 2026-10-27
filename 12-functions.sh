#!/bin/bash
validation(){
    if [ $1 -ne 0 ]; then # $? gives the exit status of previous command if it is 0 then only it proceeds to next steps
        echo "${2} FAILED"  # FAILED is appended with nginx installation..
    exit 1  #(nginxxxxx) installation failed (exit status is not 0) so it just prints and terminates it wont install my sql
    else 
        echo "${2} SUCCESS"
    fi
}
user_id=$(id -u)

if [ $user_id -ne 0 ]; then
    echo "please run this script with sudo access"
    exit 1
fi
dnf install nginx -y
validation $? "nginx installation..."    #$? is the first arg which is status code and nginx installtion is the sceond arg 

dnf install mysql -y
validation $? "mysql installation..."
