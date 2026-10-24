#!/bin/bash

var1=10
var2=20
echo "$var1+$var2"  # it prints only 10+20 as it treats it as string we need  
echo "$(($var1+$var2))" #to print the sum it should be in arithmetic format.

var3=subhash
echo "$(($var2+$var3))" #treats var 3 as 0 as its not an arithmetic. subhash is a string so bydefault shell treats its value as 0 in arithmetic opts.


Fruits=("apple" "banana" "mango") #array 
echo "all fruits in array are: ${Fruits[@]}" # @is for printing all elements in ann array 
echo "First fruit in array is : ${Fruits[0]}" #0 is the index of first element in ann array so it prints first element in an array
echo "Second fruit in array is : ${Fruits[1]}"

NAME=Rama Subhash
echo "${NAME}Nekkanti"
