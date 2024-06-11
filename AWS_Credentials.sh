#!/bin/bash


echo "This is to export AWS IAM credentials for running the Terraform.   "

echo -e "Please enter the AWS_ACCESS_KEY_ID = "
read  ACCESS_KEY_ID

echo -e "Please enter the AWS_SECRET_ACCESS_KEY = "
read  SECRET_ACCESS_KEY

echo -e "Please enter the AWS_REGION = "
read  REGION

echo -e "  $ACCESS_KEY_ID "
echo -e "  $SECRET_ACCESS_KEY "
echo -e "  $REGION "

export AWS_ACCESS_KEY_ID="$ACCESS_KEY_ID"
export  AWS_SECRET_ACCESS_KEY="$SECRET_ACCESS_KEY"
export AWS_REGION="$REGION"


echo " If getting error copy and paste the below in Terminal"
echo "export AWS_ACCESS_KEY_ID=$ACCESS_KEY_ID "
echo "export AWS_SECRET_ACCESS_KEY=$SECRET_ACCESS_KEY"
echo "export AWS_REGION=$REGION"

