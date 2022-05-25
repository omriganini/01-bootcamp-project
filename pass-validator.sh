#! /bin/bash

read -p "please enter password:" pass

Branch_Regex="[a-z]"



if [ ${#pass} -ge 10 ]
then
	echo "You have 10 Characters in your password " ; exit
else echo "You don't have 10 Characters in your password"
fi

if [[ $pass =~ $Branch_Regex ]]
then
	echo "You have a lower case"
else echo "You don't have lower case"
fi
