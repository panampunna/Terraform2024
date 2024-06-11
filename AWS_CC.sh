#!/bin/bash

echo "This is to export AWS IAM credentials for running the Terraform."

echo -e "Please enter the AWS_ACCESS_KEY_ID: "
read -r ACCESS_KEY_ID
echo "  $ACCESS_KEY_ID "
export AWS_ACCESS_KEY_ID="$ACCESS_KEY_ID"

echo -e "Please enter the AWS_SECRET_ACCESS_KEY: "
read -r -s SECRET_ACCESS_KEY
echo -e "  ******** "  # Hide the secret access key in the output
export AWS_SECRET_ACCESS_KEY="$SECRET_ACCESS_KEY"

echo -e "Please enter the AWS_REGION: "
read -r REGION
echo -e "  $REGION "
export AWS_REGION="$REGION"

# Verify credentials by making a simple AWS CLI call
if aws sts get-caller-identity &

