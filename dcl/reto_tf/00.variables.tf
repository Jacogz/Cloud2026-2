variable "reto_project" {
  description = "Project name"
  type        = string
  default     = "digital-cafe-luna"
}

variable "reto_prefix" {
  description = "Prefix for resource names, isolates the challenge's resources from the base solution"
  type        = string
  default     = "reto"
}

variable "reto_environment" {
  description = "Environment name"
  type        = string
  default     = "challenge"
}

variable "reto_owner_team" {
  description = "Owner team"
  type        = string
  default     = "team-04"
}

variable "reto_managed_by" {
  description = "Creation and management medium"
  type        = string
  default     = "terraform"
}

variable "reto_aws_profile" {
  description = "AWS profile to use for Terraform"
  type        = string
  default     = "default"
}

variable "reto_region" {
  description = "AWS region for the challenge slice"
  type        = string
  default     = "us-east-1"
}

variable "reto_instance_type" {
  description = "EC2 instance type for the challenge slice"
  type        = string
  default     = "t3.micro"
}

variable "reto_ami_id" {
  description = "AMI ID for the EC2 instance. Must be the standard Amazon Linux 2023 image (not the Minimal variant), which ships with amazon-ssm-agent preinstalled, required for SSM Session Manager access. Region-specific: the default below is for us-east-1."
  type        = string
  default     = "ami-0567589d25e06853e"
}
