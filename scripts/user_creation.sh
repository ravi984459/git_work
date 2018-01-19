#! /bin/bash

########################################
# perpose: To learn how do a user creation
# version: 1.0
# owner: info@mycompany.com
# input: user name
# output: print successfully user created
#######################################

# Det the user name

myuser=$1

# Check the user name is given or not

if [ ! $myuser ]; then
	echo " Usage : $0 < user name > "
exit
fi

# Set the user default password

mypass="$myuser"

# are you super/root user or not

whoami=`/usr/bin/whoami`

if [ "$whoami" != "root" ]; then
	echo " You must be a root user to excute "
exit
fi

# Check the user is existing or not

sudo id $myuser

if [ $? -eq 0 ]; then
	echo " user $myuser already exist "
exit
fi

echo " lets create new user "

# now create the actual user here

sudo useradd "$myuser"

if [ $? -ne 0 ]; then
	echo " We have some serios problem in $myuser creation "
exit
fi

# Set password

echo "$mypass" | /usr/bin/passwd --stdin "$myuser"

if [ $? -ne 0 ]; then 
	echo " Not able to set password for user $myuser "
exit
fi

echo " user $myuser created successfully "
echo " my default password is : $mypass "
 
chage -d 0 $myuser
