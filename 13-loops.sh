#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"


if [ $USERID -ne 0 ]; then

 echo "please run the script with root user access" | tee -a $LOGS_FILE
 exit 1

fi

#by default shell will not execute,only executed when called
VALIDATE(){
    if [ $1 -ne 0 ]; then
    echo "$2 is failled" | tee -a $LOGS_FILE
    exit 1
else
    echo "$2 is success" | tee -a $LOGS_FILE

fi

}

for package in $@ # sudo sh 13-loops.sh mysql nginx nodejs
do
    dnf list installed $package &>> $LOGS_FILE
    if[ $? -ne 0]; then
    echo "$package not installed.. installing now"
    dnf install $package -y &>> $LOGS_FILE
    VALIDATE $? "$package installation"
    else
        echo "$package aleady installed.. skipping"
    fi    
done
