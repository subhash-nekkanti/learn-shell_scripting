#!/bin/bash
echo "please enter your username"
read -s USER_NAME #here USER_NAME is the variable that takes values from what we enter

echo "please enter your password"
read -s PASSWORD

echo "username is : $USER_NAME password : $PASSWORD" # we dont need this command but just to understand we are printing username and password

# but here these commands display the username and password when we enter in script, there is no privacy for password so... add -s in read command which means silent it doesnot show username and passoword in script
