#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

set -e # this will stop the script execution if any command fails, and it will not execute the next command. It is used to avoid running commands that depend on the success of previous commands.

trap 'echo "There is an error in $LINENO, Command: $BASH_COMMAND"' ERR

if [ $USERID -ne 0 ]; then

 echo -e "$Y please run the script with root user access $N" | tee -a $LOGS_FILE
 exit 1

fi



for package in $@ # sudo sh 13-loops.sh mysql nginx nodejs
do
    dnf list installed $package &>>$LOGS_FILE
    if [ $? -ne 0 ]; then
    echo "$package not installed.. installing now"
    dnf install $package -y &>>$LOGS_FILE
    
    else
        echo -e "$Y $package is already installed.. skipping $N" | tee -a $LOGS_FILE
    fi    
done
