provider "aws" {
    region = "us-east-1"
    profile = var.dcl_aws_profile
}

data "aws_caller_identity" "current" {}

output "account_id" {
  value = data.aws_caller_identity.current.account_id
}