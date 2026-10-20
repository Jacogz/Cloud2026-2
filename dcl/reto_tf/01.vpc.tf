resource "aws_vpc" "reto-vpc" {
  cidr_block           = "10.99.0.0/16"
  instance_tenancy     = "default"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name        = "${var.reto_prefix}-${var.reto_environment}-vpc"
    Project     = var.reto_project
    Environment = var.reto_environment
    Owner       = var.reto_owner_team
    ManagedBy   = var.reto_managed_by
  }
}
