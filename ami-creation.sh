#!/bin/bash

aws ec2 create-image \
    --instance-id i-06a875c97dbd15750 \
    --name "My server" \
    --description "An AMI for my server" \
    --output text \
    --region ap-south-1 \
    --no-reboot
    --tag-specifications 'ResourceType=image,Tags=[{Key=customKey1,Value=customValue1},{Key=customKey2,Value=customvalue2}]' 'ResourceType=snapshot,Tags=[{Key=customKey1,Value=customValue1},{Key=customKey2,Value=customvalue2}]'
