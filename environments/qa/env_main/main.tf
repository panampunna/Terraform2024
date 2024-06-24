##### AWS_PROFILE=john terraform plan

####   terraform -version    |||  https://developer.hashicorp.com/terraform/install 
terraform {
  ###  terraform version requirement
  required_version = ">=1.7.5" ##  ">=1.6.6"
  #### terraform providers ( after terraform init ) || https://registry.terraform.io/providers/hashicorp/aws/latest/docs 
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.43.0" ### ">= 5.33.0"
    }
  }
}

provider "aws" {
  region = var.region
}

data "aws_caller_identity" "current" {}
data "aws_region" "current" {}


locals {
  project_tags = var.project_tags
  prefix       = var.prefix
  environment  = var.environment
  region       = var.region
}

###########################################

module "module_cloudwatch_metric_alarm" {
  source = "../../../modules/module_cloudwatch_metric_alarm"
  ###   subnet_ids     = var.subnet_ids
  region       = var.region
  prefix       = var.prefix
  project_tags = var.project_tags
  environment  = var.environment
}



################################################
#########  https://registry.terraform.io/modules/terraform-aws-modules/ecr/aws/latest
####   Amazon Elastic Container Service
#module "module_ecs" {
#  source = "../../../modules/module_ecs"
#
#   ###### vpc_id   = var.vpc_id  ##### module.vpc.module_vpc_outputs_vpc1_id ##this coming from the VPC module output
#   repository_name = var.repository_name
#   subnet_ids      = var.subnet_ids
#   region          = var.region
#   prefix          = var.prefix
#   project_tags    = var.project_tags
#   environment     = var.environment
# }
#
############################
#######################

##export AWS_ACCESS_KEY_ID="AKIAQ2LXXXXXXXXXXXXXXXXXXXXXXXXX"
##export AWS_SECRET_ACCESS_KEY="rJ6ZNt4qnPYbLUDEtR1XDl3LXXXXXXXXXXXXXX"
##export AWS_REGION="ap-south-1"










