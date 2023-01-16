#!/bin/bash
VAR="Bash"
echo "Hi i am ${VAR1}ing"

# setting a variable.
SRVR_NAME=$(hostname)
echo "You are running this script on ${SRVR_NAME}"

# This below method is an old way to get the server name
VAR_NAME=`hostname`
echo "This is an old way to get the ${VAR_NAME}"

# Testing..
# [ test ]  - tests are performed within closed bracket

# if checks..can also add else or elif (if needing multiple)
if [ "$VAR" = "Bash" ] 
then
    echo "The variable has the value Bash"
fi

# for loop - with multiple assignments.
for COLOR in red blue yellow
do
  echo "COLOR is :$COLOR"
done

# Getting values
DATETIME=$(date +%Y-%m-%d-%H-%M-%S-FILE)
echo ${DATETIME}

# Positional parms
# $0 - script itself and then you have $1 - $9 for each
# individual parms.
echo $0 # This outputs the file name.

# Reading from stdin
read -p "Which country are you from ?" COUNTRY
echo "${COUNTRY} is a beautiful place."