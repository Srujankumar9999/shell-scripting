#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: You must have sudo access to execute this script"
    exit 1 #other than 0
fi
dnf list installed mysql
if [$? -ne 0]
then 

    dnf install mysql -y
    if [$? -ne 0]
    then 
        echo "MYSql Install will fail"
    else
        echo "MYSql install will success"
    fi
else 
echo "MYsql is already installed"

dnf list installed Git
if [$? -ne 0]
then 

    dnf install Git -y
    if [$? -ne 0]
    then 
        echo "MYSql Install will fail"
    else
        echo "MYSql install will success"
    fi
else 
echo "Git is already installed"
