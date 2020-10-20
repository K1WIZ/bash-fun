#!/bin/bash
#
# Basic demo of functions, conditions, variables, reading input, printing output, and input validation
# Written by: John Rogers
# 10/19/2020
#
# Permission is granted for free use under the GPL 
#

# Declare variables
message=""
age=""
fname=""
lname=""
isOld=""

# Functions to call
showMessage() {
echo "Hi" $fname $lname "because you said your age is: " $age"..." $isOld;
}

first() {
echo "what is your first name? ";
read fname
}

last() {
echo "what is your last name? ";
read lname
}

getAge() {
read -r -p "Please tell me your age? " age
while [[ ! $age =~ ^[0-9]{1,3}$ ]] ; do
  read -r -p "Sorry... age can only be a number within 3 digits.  Please tell me your age? " age;
done
}

oldOrNot() { 

case $age in

  [0-9]) 
        isOld="You're just a baby!";;
  [1-2][0-9]) 
        isOld="You're a troublemaker!";;
  [3-4][0-9])
        isOld="You're working like a dog!";;
  [5-6][0-9])
        isOld="You better get that wheelchair ready for the down hill ride!";;
  [7-8][0-9])
        isOld="You better remember your cane!";;
  [9][0-9])
        isOld="You've fallen and you can't get up!";;
  [1][0-9][0-9])
        isOld="You're a corpse!  R.I.P.";;
esac
}

# Call functions in desired order
first
last
getAge
oldOrNot
showMessage
exit 0;
