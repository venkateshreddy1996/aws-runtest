#!/bin/bash


source_region=ap-south-1
source_imageid=ami-064dfa47f06f71079
destination_region=us-west-2
NAME=AMIcopy

aws ec2 copy-image \
    --source-region ${source_region} \
    --source-image-id ${source_imageid} \
    --name ${NAME} \
    --region ${destination_region} \
    --description "This is my copied image"
