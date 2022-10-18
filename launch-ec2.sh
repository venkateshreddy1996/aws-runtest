#!/bin/bash

IMAGE=ami-01216e7612243e0ef
region=ap-south-1
TYPE=t2.micro
KEY=devkey-rjt
SECURITY_GROUPS=sg-091613d2180615619
subnet=subnet-05a196b9647702a6c
IAM_instance_profile="Arn=arn:aws:iam::925034260775:role/Allow-admin-fromec2"

aws ec2 run-instances \
    --image-id ${IMAGE} \
    --instance-type ${TYPE} \
    --key-name ${KEY} \
    --monitoring "Enabled=false" \
    --placement file://placement.json \
    --security-group-ids "${SECURITY_GROUPS}" \
    --subnet-id ${subnet} \
    --iam-instance-profile "${IAM_instance_profile}"
    --region ${region} \
    --tag-specifications file://tags.json \
    --instance-initiated-shutdown-behavior stop \
    --block-device-mappings file://block-device-mappings.json
