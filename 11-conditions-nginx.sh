#!/bin/bash
user_id=$(id -u)

if [ $user_id -ne 0 ]; then
    echo "please run this script eith sudo access"
    exit 1
fi

dnf install nginxxxx -y #even though if user runs without sudo access shell will run this command without terminating
#id user-id nit equals 0 also shell wont terminate there itself and it still executes these commands
#we need to manually command shell to terminate if it doesnot satisfy the condition so we add another condition with exit 1
#exit 1 in line 6 tells shell to terminate as user is not using sudo access and it doesnot proceed to next commands
if [ $? ne 0 ]; then # $? gives the exit status of previous command if it is 0 then only it proceeds to next steps
    echo "nginx installation failed"
    exit 1
else 
    echo "nginx installation success"
fi
echo "still proceeding"


dnf install mysql 
if [ $? ne 0 ]; then
    echo "mysql client installation failed"
    exit 1
else 
    echo "mysql client installation success"
fi

