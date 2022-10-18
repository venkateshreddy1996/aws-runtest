aws ec2 create-image \
    --instance-id i-06a875c97dbd15750 \
    --name "My server" \
    --description "An AMI for my server"
    --tags-specifications file://tags.json
