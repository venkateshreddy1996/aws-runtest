#!/bin/bash

aws ec2 create-image \
    --instance-id i-07832c93498a3bcb6 \
    --name "WebserverAMI" \
    --description "Taking AMI backup for webserver" \
    --output json \
    --region ap-south-1 \
    --no-reboot
