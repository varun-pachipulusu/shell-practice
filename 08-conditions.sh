#syntax for if statement in bash shell scripting
if [ expression ]; then
	code here
fi

if [ expression ]; then
	code here
elif [ expression ]; then
	code here
else
	code here
fi

#!/bin/bash

NUMBER=$1

#-gt --> greater than
#-lt --> less than
#-eq --> equal to
#-n --> not equal to

if [ $NUMBER -gt 40 ]; then
    echo "the given number:$NUMBER is greater than 40"
fi   