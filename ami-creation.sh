#!/bin/bash

aws ec2 create-image \
    --instance-id i-06a875c97dbd15750 \
    --name "My server" \
    --description "An AMI for my server" \
    --tag-specifications file://tags-image.json
