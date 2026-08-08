#!/bin/bash

# syntax for if statement in bash shell scripting
# if [ expression ]; then
#     code here
# fi

# if [ expression ]; then
#     code here
# elif [ expression ]; then
#     code here
# else
#     code here
# fi


NUMBER=$1

# -gt --> greater than
# -lt --> less than
# -eq --> equal to
# -n --> not equal to

if [ "$NUMBER" -gt 40 ]; then
    echo "The given number: $NUMBER is greater than 40"
    elif [ "$NUMBER" -eq 40 ]; then
    echo "The given number: $NUMBER is equal to 40"
   else
    echo "The given number: $NUMBER is less than  40"
     
fi
