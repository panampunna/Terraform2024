#####  MAIN  ENV  OUT 

#
####### ../../../modules/module_CICD_CodeBuild
#output "Module_module_CICD_CodeBuild--ALL-OUT" {
#  description = " Module module.module_CICD_CodeBuild.STAR  data ALL  "
#  value       = module.module_CICD_CodeBuild.*
#}

########## ../../../modules/module_Security_Groups
#output "Module_module_Security_Groups--ALL-OUT" {
#  description = " Module module.module_Security_Groups.STAR  data ALL  "
#  value       = module.module_Security_Groups.*
#}



###### module "module_CodePipeline"
#output "Module_module_CodePipeline--ALL-OUT" {
#  description = " Module module.module_CodePipeline.STAR  data ALL  "
#  value       = module.module_CodePipeline.*
#}

#########################################
#output "Module_module_s3--ALL-OUT" {
#  description = " Module module.module_s3.STAR  data ALL  "
#  value       = module.module_s3.*
#}
#
###############################################
#output "MAIN_module_eks-k8s-alb-tg_OUTput" {
#  description = " Module module_eks-k8s-alb-tg  ALL  "
#  value       = module.module_eks-k8s-alb-tg.*
#}
#
#################################################
#output "Module_module_ec2-alb__Main_OUTput" {
#  description = " Module EC2-ALB  data ALL  "
#  value       = module.module_ec2-alb.*
#}
#
##############################################
#output "data_Main_OUTput" {
#  description = " Module  data ALL  "
#  value       = module.module_data.*
#}
##############################



##################################################
#output "alb_Main_OUTput" {
#  description = " Module alb ALL  "
#  value       = module.module_alb.*
#}
####

#################################################
#output "ECR_Main_OUTput" {
#  description = " Module ECR ALL  "
#  value       = module.module_ecr.*
#}
################################################
#	output "EKS_Main_OUTput" {
#	  description = " Module EKS ALL  "
#	  value       = module.module_eks.*
#	}
#
##########################################################################
output "AWS_account_id" {
  description = " data.aws_caller_identity.current.account_id   "
  value       = data.aws_caller_identity.current.account_id
}

output "env_data_aws_caller_identity_current_arn" {
  description = "env vpc_subnet { data.aws_caller_identity.current.arn  } "
  value       = data.aws_caller_identity.current.arn
}

output "caller_user_OUTput_Main_Env" {
  description = "  data.aws_caller_identity.current.user_id    This will not come in the out put "
  value       = data.aws_caller_identity.current.user_id
}


output "Current_Region_OUTput_Main_Env" {
  description = "data.aws_region.current.name  "
  value       = data.aws_region.current.name
}
######################################################################


