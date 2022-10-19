#!/bin/bash

aws ec2 create-image \
    --instance-id i-06a875c97dbd15750 \
    --name "My server" \
    --description "An AMI for my server" \
    --output text \
    --region ap-south-1 \
    --no-reboot
