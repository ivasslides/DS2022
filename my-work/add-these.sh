#!/bin/bash 

echo "Your first number is $1" 
echo "Your second number is $2" 
echo "Let me add those up for you..." 

SUM=$(( $1 + $2))

sleep 3 #script acts like its thinking
echo "Your sum is: $SUM" 
