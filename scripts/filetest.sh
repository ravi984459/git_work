#! /bin/bash

########################################
# perpose: To learn do a filetest
# version: 1.0
# owner: info@mycompany.com
# input: message
# output: print message
#######################################

# check the file /etc/passwd is available or not
if [ -f "/etc/passwd" ]; then
	echo " We have /etc/passwd file "
else 
	echo " we don't have /etc/passwd "
fi

# check the file /etc/shadow has read permison

if [ -r "/etc/shadow" ]; then
	echo " This file has read permison "
else
	echo " This file has not read permison "
fi

if [ -d "/home/laxmi/git_work/" ]; then
	echo " This directory is exist "
else
	echo " This directory not exist "
fi   
