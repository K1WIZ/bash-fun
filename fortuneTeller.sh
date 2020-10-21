#!/bin/bash
#
# This script asks for two numbers and then gives a fortune.
# Written by: John & Sophia Rogers
# 10/20/20
#

# Declare variables
fnumber=""
secnumber=""
fortune=""
replay=""
combnumber=""

# Functions to call

getFirst() {
# Ask for the first number
	read -r -p "Pick a number between 1 and 4: " fnumber;
	while [[ ! $fnumber =~ ^[1-4]{1}$ ]] ; do
		read -r -p "Sorry but only a single digit between 1 and 4 please.  Pick a number between 1 and 4: " fnumber;
	done
	echo "You picked this number: " $fnumber;
}

getSecond() {
# Ask for the second number
	read -r -p "Pick a number between 1 and 8: " secnumber;
  while [[ ! $secnumber =~ ^[1-8]{1}$ ]] ; do
    read -r -p "Sorry but only a single digit between 1 and 8 please.  Pick a number between 1 and 8: " secnumber;
  done
  echo "You picked this number: " $secnumber;
}

cnumber() {
# combine first and second numbers to combined integer
	combnumber=`echo $fnumber$secnumber`
}


fort() {
# generate fortune response based on the two numbers chosen
	case $combnumber in
		[1][1]) 
			fortune="You will marry the person of your dreams!"
			;;
		[1][2])
			fortune="You will have no homework tonight!  YAY!"
			;;
		[1][3])
			fortune="You won ONE MILLION DOLLARS!!!!!"
			;;
		[1][4])
			fortune="You scored a date with Billie Eilish!"
			;;
		[1][5])
			fortune="You have a crapload of MATH HOMEWORK tonight!"
			;;
		[1][6])
			fortune="Your bank account balance has been transferred to President Trump!"
			;;
		[1][7])
			fortune="Your cellphone will end up in the toilet later today... :("
			;;
		[1][8])
			fortune="Your younger sibling just stuffed a cookie in your XBox!"
			;;
		[2][1])
      fortune="You laugh now, wait till you get home!"
      ;;
    [2][2])
      fortune="The fortune you seek is in another cookie..."
      ;;
    [2][3])
      fortune="Come back later...  I'm sleeping!"
      ;;
    [2][4])
      fortune="Life never hears you screaming your safe word."
      ;;
    [2][5])
      fortune="Digital circuits are made from analog parts."
      ;;
    [2][6])
      fortune="I didn't wash my hands after my last toilet break!"
      ;;
    [2][7])
      fortune="Pay no attention to the man behind the curtain..."
      ;;
    [2][8])
      fortune="Marriage lets you annoy one special person for the rest of your life."
      ;;
		[3][1])
      fortune="Run!"
      ;;
    [3][2])
      fortune="You will read this and say Geez! I could come up with better fortunes than that!"
      ;;
    [3][3])
      fortune="Do or do not, there is no try!"
      ;;
    [3][4])
      fortune="Mornings are for coffee and contemplation"
      ;;
    [3][5])
      fortune="A real patriot is the fellow who gets a parking ticket and rejoices that the system works."
      ;;
    [3][6])
      fortune="Three can keep a secret if you can get rid of two."
      ;;
    [3][7])
      fortune="Blessed are the children for they shall inherit the national debt."
      ;;
    [3][8])
      fortune="If you eat something and nobody sees you eat it, it has no calories."
      ;;
		[4][1])
      fortune="Pass the bill to the person on your left."
      ;;
    [4][2])
      fortune="Your problem just got bigger.  Think: what have you done?"
      ;;
    [4][3])
      fortune="A conclusion is simply the place where you got tired of thinking."
      ;;
    [4][4])
      fortune="We don't know the future, but here's a cookie."
      ;;
    [4][5])
      fortune="Because of your melodic nature, the moonlight never misses an appointment."
      ;;
    [4][6])
      fortune="All fortunes are wrong except this one."
      ;;
    [4][7])
      fortune="You think it's a secret, but they know."
      ;;
    [4][8])
      fortune="Hard work pays off in the future. Laziness pays off now."
      ;;
	esac
}

tellFortune() {
# Print the fortune to the screen.
	echo "Based on your super smart selections today, I am pleased to render your fortune as: " $fortune;

	read -r -p "Would you like to play again? (Y/N)" replay;

	case $replay in
		[Yy] ) 
			main
			;;
		[Nn] )
			exit 0
			;;
	esac
}

main() {
# Main function that runs the program
	getFirst;
	getSecond;
	cnumber;
	fort;
	tellFortune;
}

# Call the main function
main



