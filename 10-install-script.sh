#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
echo "ERROR:: u must have sudo access to execute this script"
exit 1
fi

dnf list installed mysql
if [ $? -ne 0 ]
then
echo " not inn list mysql"
dnf install mysql -y
if [$? -ne 0]
then 
echo "installing MYSQL .... failure"
exit 1
else
echo "installing MYSQL ..... success"
fi
else
echo " already installed"
fi

dnf list installed git
if [ $? -ne 0 ]
then
echo " not in list "
dnf instal git -y
if [$? -ne 0]
then 
echo "installing git .... failure"
exit 1
else
echo "installing git ..... success"
fi
else 
echo "already installed"
fi