#!/bin/bash

NUMBER1=$1
NUMBER2=$2

TIMESTAMP=$(DATE)
echo "Today date and time of meeting : $TIMESTAMP"
SUM=$(($NUMBER1 + $NUMBER2))
echo "Adding of two numbers is $SUM"