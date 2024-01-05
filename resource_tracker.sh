#!/bin/bash
#
########################
#Author : Mahesh
#Date : 5 Jan 2024
#
#Version : V1
#
# This ecript is used resource tracker.
#
############################

# AWS S3
# Aws EC2
# AWS Lambda
# Aws IAM Users

set -x

# this list AWS S3 users
echo "This list s3 users"
aws s3 ls

# this list ec2 instances
echo " this list ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# this list lambda functions
echo " this list lambda functions"
aws lambda list-functions

# this list IAM users
echo " this list Iam users"
aws iam list-users
