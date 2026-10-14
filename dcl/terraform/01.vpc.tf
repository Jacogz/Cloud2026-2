resource "aws_vpc" "dcl-dev-vpc" {
    cidr_block = "10.20.0.0/16"
    instance_tenancy   = "default"
    
    tags = {
        Name        = "${var.dcl_prefix}-${var.dcl_environment}-vpc"
        Project     = var.dcl_project
        Environment = var.dcl_environment
        Owner       = var.dcl_owner_team
        ManagedBy   = var.dcl_managed_by
    }
}