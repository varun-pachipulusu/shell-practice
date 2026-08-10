#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then

 echo "please run the script with root user access"
 exit 1

fi

echo "installing nginx"
dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "installing nginx is failled"
    exit 1
else
    echo "installing nginx is success"

fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "installing Mysql is failled"
    exit 1
else
    echo "installing Mysql is success"

fi

dnf install nodejs -y

if [ $? -ne 0 ]; then
    echo "installing nodejs is failled"
    exit 1
else
    echo "installing nodejs is success"

fi