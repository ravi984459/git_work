#! /bin/bash

########################################
# perpose: To learn do a string test comparison
# version: 1.0
# owner: info@mycompany.com
# input: command
# output: check root user or not
#######################################

# Defined variable and get value from command

WHOAMI=`/usr/bin/whoami`

if [ "$WHOAMI" == "root" ]; then
	echo " Yes U R The ROOT User "
else
	echo " NO, U R The $WHOAMI User "
fi
