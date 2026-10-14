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