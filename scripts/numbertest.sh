#! /bin/bash

########################################
# perpose: To learn do a number test 
# version: 1.0
# owner: info@mycompany.com
# input: student details
# output: fail or pass
#######################################


Marks=$1
Name='laxmireddy'


if [ ! $Marks ]; then
	echo " Usage : $0 < Marks> "
exit
fi

if [ "$Marks" -gt 100 -o "$Marks" -lt 0 ]; then
        echo " Usage : $0 < [0-100] > "
exit
fi

echo " Student Name is : $Name "

if [ "$Marks" -ge 70 ]; then
	echo " Student Result is : First class "

elif [ "$Marks" -lt 70 -a "$Marks" -ge 60 ]; then
	echo " Student Result is : Second class "

elif [ "$Marks" -lt 60 -a "$Marks" -ge 40 ]; then
        echo " Student Result is : Third class "
else
        echo " Student Result is : Fail "
fi
