#!/bin/bash

NAME=webserver-lc
IMAGE=ami-064dfa47f06f71079
Instance_type=t2.micro
security_groups=sg-091613d2180615619
Key=devkey-rjt
region=ap-south-1
IAM_instance_profile="Arn=arn:aws:iam::925034260775:instance-profile/Allow-admin-fromec2"

aws autoscaling create-launch-configuration \
    --launch-configuration-name ${NAME} \
    --image-id ${IMAGE} \
    --instance-type ${Instance_type} \
    --security-groups "${security_groups}" \
    --iam-instance-profile "${IAM_instance_profile}" \
    --key-name ${Key} \
    --region ${region}
