#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


if [ $USERID -ne 0 ]; then

 echo -e "$Y please run the script with root user access $N" | tee -a $LOGS_FILE
 exit 1

fi

#by default shell will not execute,only executed when called
VALIDATE(){
    if [ $1 -ne 0 ]; then
    echo -e "$R $2 is failed $N" | tee -a $LOGS_FILE
    exit 1
else
    echo -e "$G $2 is success $N" | tee -a $LOGS_FILE

fi

}

for package in $@ # sudo sh 13-loops.sh mysql nginx nodejs
do
    dnf list installed $package &>>$LOGS_FILE
    if [ $? -ne 0 ]; then
    echo "$package not installed.. installing now"
    dnf install $package -y &>>$LOGS_FILE
    VALIDATE $? "$package installation"
    else
        echo -e "$Y $package is already installed.. skipping $N" | tee -a $LOGS_FILE
    fi    
done
