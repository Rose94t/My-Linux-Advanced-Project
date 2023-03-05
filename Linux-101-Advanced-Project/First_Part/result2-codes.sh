#!/bin/bash

while true
do
  read -p 'Please write your file location: ' FILE 
  if [[ $FILE == '/home/ec2-user/Linux-101-Advanced-Project/First_Part/event_history.csv' ]]
  then
    grep -i "serdar" $FILE | grep -i "terminate" | grep -Eo "i-[a-zA-Z0-9]{17}" | sort | uniq > result.txt
    echo "Your result is ready under the result1.txt file"
    break
  else [[ ! -f $FILE ]]
    echo "Please give an existing file"
  fi
done