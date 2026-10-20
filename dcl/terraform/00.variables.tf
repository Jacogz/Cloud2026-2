variable "dcl_project" {
  description = "Project name"
  type        = string
  default     = "digital-cafe-luna"
}

variable "dcl_prefix" {
  description = "Prefix for resource names"
  type        = string
  default     = "dcl"
}

variable "dcl_environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

variable "dcl_owner_team" {
  description = "Owner team"
  type        = string
  default     = "team-04"
}

variable "dcl_managed_by" {
  description = "Creation and management medium"
  type        = string
  default     = "terraform"
}

variable "dcl_ssh_allowed_cidr" {
  description = "Team's current public IPv4 /32 allowed to SSH into dcl-dev-ec2-public"
  type        = string
}

variable "dcl_aws_profile" {
  description = "AWS profile to use for Terraform"
  type        = string
  default     = "default"
}