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
# We print text to the screen and use variable substitution to insert the info we collected.
echo "Hi" $fname $lname "because you said your age is: " $age"..." $isOld;
}

first() {
# We print a screen prompt using echo and then take (read in) user input to the variable fname.
echo "what is your first name? ";
read fname
}

last() {
# We print a screen prompt using echo and then take (read in) user input to the variable lname.
echo "what is your last name? ";
read lname
}

getAge() {
# Here we show how to combine generating the prompt for age and also reading in the user input on one line.
read -r -p "Please tell me your age? " age
# We test the user input to make sure it is an integer value, and within a valid range.  If not, 
# we continue prompting until valid values are entered by the user.
while [[ ! $age =~ ^[0-9]{1,3}$ ]] ; do
  read -r -p "Sorry... age can only be a number within 3 digits.  Please tell me your age? " age;
done
}

oldOrNot() { 
# We can generate different responses depending on the value of the age.  If the age value falls within
# a range, we print the response for that range.  The case structure alllows us to compare the input.
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
# We make a clean exit
exit 0;   
