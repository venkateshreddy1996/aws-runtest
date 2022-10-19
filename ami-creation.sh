#!/bin/bash

aws ec2 create-image \
    --instance-id i-0059a565187319d70 \
    --name "JenkinsBackupAMi" \
    --description "An AMI for my server" \
    --output text \
    --region ap-south-1 \
    --no-reboot
