#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOG_FILE="/var/log/shell-script/$0.log"


if [ $USERID -ne 0 ]; then

 echo "please run the script with root user access"
 exit 1

fi

#by default shell will not execute,only executed when called
VALIDATE(){
    if [ $1 -ne 0 ]; then
    echo "$2 is failled"
    exit 1
else
    echo "$2 is success"

fi

}

dnf install nginx -y &>> $LOGS_FILE
VALIDATE $? "Installing nginx"


dnf install mysql -y &>> $LOGS_FILE
VALIDATE $? "Installing Mysql"



dnf install nodejs -y &>> $LOGS_FILE
VALIDATE $? "Installing nodejs"