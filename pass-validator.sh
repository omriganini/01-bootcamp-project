#! /bin/bash

read -p "please enter password:" pass

Branch_Regex_a_z="[a-z]"
Branch_Regex_0_9="[0-9]"
Branch_Regex_A_Z="[A-Z]"
Branch_Regex_Special="[@$!%*#?&^_-]"



if [ ${#pass} -ge 10 ]
then
	echo "You have 10 Characters in your password " ; exit
else echo "You don't have 10 Characters in your password"
fi

if [[ $pass =~ $Branch_Regex_0_9 ]]
then
	echo "You have numbers in your pass"
else echo "You don't have numbers in your pass"
fi

if [[ $pass =~ $Branch_Regex_a_z ]]
then
	echo "You have a lowercase"
else echo "You don't have lower case"
fi

if [[ $pass =~ $Branch_Regex_A_Z ]]
then
	echo "You have an upper case"
else echo "You don't have an Upper case"
fi

if [[ $pass =~ $Branch_Regex_Special ]]
then
	echo "You have a lower case"
else echo "You don't have lower case"
fi


