

echo "This is to export AWS IAM credentials for running the Terraform.   "

echo -e "Please enter the AWS_ACCESS_KEY_ID = "
read  ACCESS_KEY_ID
echo "  $ACCESS_KEY_ID "
export AWS_ACCESS_KEY_ID="$ACCESS_KEY_ID"

echo -e "Please enter the AWS_SECRET_ACCESS_KEY = "
read  SECRET_ACCESS_KEY
echo  -e "  $SECRET_ACCESS_KEY " 
export  AWS_SECRET_ACCESS_KEY="$AWS_SECRET_ACCESS_KEY"

echo -e "Please enter the AWS_REGION = "
read  REGION
echo -e "  $REGION " 
export AWS_REGION="$REGION"

