resource "aws_internet_gateway" "dcl-dev-igw" {
    vpc_id = aws_vpc.dcl-dev-vpc.id

    tags = {
        Name        = "${var.dcl_prefix}-${var.dcl_environment}-igw"
        Project     = var.dcl_project
        Environment = var.dcl_environment
        Owner       = var.dcl_owner_team
        ManagedBy   = var.dcl_managed_by
    }
}