#!/bin/bash

# answer1 
MY_KEY=$(cat certificate.pem)
echo ${MY_KEY}
echo -e ${MY_KEY} > new.pem
cat new.pem

# answer2 
echo -e $(cat certificate.pem) > new.pem
cat new.pem
