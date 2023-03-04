#!/bin/bash

# answer1 
grep "PrivateIpAddress" conclusion-info.json | head -n1 | cut -d '"' -f4
sed -i "s/ec2-private_ip/$(grep "PrivateIpAddress" conclusion-info.json | head -n1 | cut -d '"' -f4)/g" conclusion-terraform.tf

# answer2
# IP=$(cat conclusion-info.json | grep -m1 PrivateIpAddress | cut -d ":" -f2 | cut -d '"' -f2)
# sed -i "s/ec2-private_ip/$IP/g" conclusion-terraform.tf

# answer3
# IP=$(awk -F: '/PrivateIp/ {print $2}' info.json | head -n1 | tr -d ' ",')
# sed -i "s/ec2-private_ip/$IP/g" terraform.tf
# sed -e "s/\r//g" terraform.tf > newterraform.tf

