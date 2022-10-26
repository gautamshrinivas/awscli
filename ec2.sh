#!/bin/bash
aws ec2 run-instances 
  --image-id ami-08c40ec9ead489470 
  --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=activity}]'
  --count 1 
  --instance-type t2.micro 
  --subnet-id subnet-0008be71a94c13266 
  --security-group-ids sg-0e5e1e9926680a31b 
  --associate-public-ip-address 
  --key-name gautam-key