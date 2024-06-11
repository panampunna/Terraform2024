####   terraform -version    |||  https://developer.hashicorp.com/terraform/install
terraform {
  # terraform version requirement
  required_version = ">=1.7.5"
 #### terraform providers ( after terraform init ) || https://registry.terraform.io/providers/hashicorp/aws/latest/docs
   required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.43.0"   
    }
  }

  backend "s3" {
    bucket         = "client-allianz-dev-eu-central-1-terraform-remote-state"
    key            = "_backend/terraform.tfstate"
    region         =  "ap-south-1"  ### 
    dynamodb_table = "client-allianz-dev-eu-central-1-dynamodb-locks"
    encrypt        = true
  }
}

######################
#terraform {
#  backend "s3" {
#    bucket         = "my-terraform-state-bucket"
#    key            = "terraform.tfstate"
#    region         =   "ap-south-1"    ##  "us-west-2"
#    encrypt        = true
#    dynamodb_table = "terraform_locks"
#    versioning     = {
#      enabled = true
#    }
#  }
#}
#
############################

provider "aws" {
  region = var.region

}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "${var.prefix}-${var.environment}-${var.region}-terraform-remote-state"
  # Enable versioning so we can see the full revision history of our state files

  versioning {
    enabled = true
  }

  # this is not public
  acl           = "private"
  force_destroy = false
  lifecycle {
    # set this to `false` of you need it to destroy, otherwise set to `true` to prevent destroy
    prevent_destroy = true
  }

  # Enable server-side encryption by default
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  tags = merge(
    var.project_tags,
    {
      Type = "Terraform state bucket"
    }
  )
}

resource "aws_s3_bucket_public_access_block" "terraform_state" {
  bucket = aws_s3_bucket.terraform_state.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_dynamodb_table" "terraform_locks" {
  name = "${var.prefix}-${var.environment}-${var.region}-dynamodb-locks"

  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
  tags = merge(
    var.project_tags,
    {
      Type = "Terraform state table"
    }
  )
}

data "aws_caller_identity" "current" {}
