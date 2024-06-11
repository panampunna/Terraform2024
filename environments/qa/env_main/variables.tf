variable "vpc_id" {}

variable "prefix" {}
variable "environment" {}
variable "region" {}
variable "project_tags" {}


################## EC2 Start ############
variable "ami" {}
variable "instance_type" {}
variable "private_key_path" {}
################### EC2 End  #############



####################ECR  #####################
variable "repository_name" {}

##############EKS #########################
variable "cluster_name" {}


variable "control_plane_subnet_ids" {
  default = []
}

variable "subnet_ids" {
  default = []
}

variable "aws_auth_users" {
  default = []
}
#############CodeBuild  Module STart################################
variable "projectroot" {}
##variable "sourcecode" {}

###########
variable "sourcecode" {
  type = map(any)
  # other configurations...
}

################CodeBuild  Module  END ####################

#################################################
#variable "cidr_map" {
#  type = map(any)
#
#  default = {
#
#    vpc1_vpc                              = "172.60.0.0/16"  ##
#    vpc1_vpc_dmz_A_public                 = "172.60.10.0/24" ##  vpc1_subnet_dmz_A_public
#    vpc1_vpc_dmz_B_public                 = "172.60.20.0/24" ##  vpc1_subnet_dmz_B_public
#    vpc1_vpc_subnet_database_A_private    = "172.60.30.0/24" ##  vpc1_subnet_database_A_private
#    vpc1_vpc_subnet_database_B_private    = "172.60.40.0/24" ##   vpc1_subnet_database_B_private
#    vpc1_vpc_subnet_application_A_private = "172.60.50.0/24" ##   vpc1_subnet_application_A_private
#    vpc1_vpc_subnet_application_B_private = "172.60.60.0/24" ##   vpc1_subnet_application_B_private
#    vpc1_vpc_subnet_database_A_shared     = "172.60.70.0/24" ##   vpc1_subnet_database_A_shared
#    vpc1_vpc_subnet_database_B_shared     = "172.60.80.0/24" ##    vpc1_subnet_database_B_shared
#  }
#}
##############################################################
#
#variable "region_zone_map" {
#  type = map(any)
#
#  default = {
#    region_zone_map_A = "ap-southeast-2a" ####ap-southeast-2
#    region_zone_map_B = "ap-southeast-2b"
#    region_zone_map_C = "ap-southeast-2c" ## 
#  }
#}
#
#
#
#variable "ami" {}
#variable "instance_type" {}
#variable "vjpmain_vpc_subnet_id" {}
#
#variable "private_key_path" {
#  description = "Path to the private key file"
#  type        = string
#  default     = "~/.ssl/my-key-pair.pem" #########  Good to keep a key in this path if not added in terraform.tfvars ###
#}
#
#
#
#
