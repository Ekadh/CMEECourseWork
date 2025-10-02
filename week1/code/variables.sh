#!/bin/sh

##Use of variables

# Special variables

echo "This script was called with $# arguments"
echo "The name of this script is $0"
echo "The first argument is $1"
echo "The second argument is $2"
echo "The arguments are $@"

# Assigned variables
MY_VAR="Ekadh"
echo 'the current value of my variable is:' $MY_VAR
echo
echo 'Please enter a new string'
read MY_VAR
echo
echo 'the new value of my variable is:' $MY_VAR
echo

## Assigned variables: Reading values from user input
echo 'Enter two numbers separated by a space'
read VAR1 VAR2
echo
echo 'you entered' $VAR1 'and' $VAR2 '; Their sum is:'

## Assigned variables; Command substitution
MY_SUM=$(expr $VAR1 + $VAR2)
echo $MY_SUM

#exit
#Note: The echo command is used to print text to the terminal. The read command is used to add new lines to the code if needed.
#Note: You can run the bash variables.sh command in terminal with the arguments following the filename: bash variables.sh 3 six
