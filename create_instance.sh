#!/bin/bash

# Get a list of all regions
regions=$(aws ec2 describe-regions --output json | jq -r '.Regions[].RegionName')

# Select a random region from the list
random_region=$(echo $regions | tr ' ' '\n' | shuf -n 1)

# Create the EC2 instance in the random region
aws ec2 run-instances --image-id ami-xxxxxxxx --instance-type t2.micro --region $random_region --count 1

