#!/bin/bash
# Basic if statement

#print error in red backround 
function_error ()
{
  printf "${red} You dont have $* in your passowrd. \n ${clear}"
}

#print good in green backround 
function_good ()
{
  printf "${green} You have $* in your passowrd. \n ${clear}"
}

#check how len of the password
function_check_len ()
{
    if  [ ${#pass} -ge 10 ] 
        then 
            function_good "$1"
    else
            function_error "$1"
    fi
}

#check REGEX for the passowrd
function_check_password ()
{
    if  [[ $1 =~ $2 ]] 
        then 
            function_good "$3"
    else
            function_error "$3"
    fi
}


# Get password from the user
read -p "please enter password:" pass

# All my Regex format
BRANCH_REGEX_a_z="[a-z]"
BRANCH_REGEX_0_9="[0-9]"
BRANCH_REGEX_A_Z="[A-Z]"
BRANCH_REGEX_Special="[@$%!*#?&^-]"

# Set the color variable
green='\033[0;32m'
red='\e[1;31m'
# Clear the color 
clear='\033[0m'

#Run function to check to validate the password
function_check_len       "10 characters"
function_check_password "$pass" "$BRANCH_REGEX_a_z" "alphabet lower"
function_check_password "$pass" "$BRANCH_REGEX_0_9" "numbers"
function_check_password "$pass" "$BRANCH_REGEX_A_Z" "alphabet upper"
function_check_password "$pass" "$BRANCH_REGEX_Special" "special characters"

#Get Exit Code for all the passowrd if I Got 0 the passowrd passed all the conditions))) if not 1
if [ ${#pass} -ge 10 ] && [[ $pass =~ $BRANCH_REGEX_a_z ]] && [[ $pass =~ $BRANCH_REGEX_0_9 ]] && [[ $pass =~ $BRANCH_REGEX_A_Z ]]  && [[ $pass =~ $BRANCH_REGEX_Special ]] 
    then 
        printf "${green} The Exit Code is $? "
else
    printf "${red} The Exit Code is $? "
fi