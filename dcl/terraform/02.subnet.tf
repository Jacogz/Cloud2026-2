resource "aws_subnet" "dcl-dev-subnet-public-a" {
    vpc_id     = aws_vpc.dcl-dev-vpc.id
    cidr_block = "10.20.10.0/24"
    availability_zone = "us-east-1a"

    tags = {
        Name        = "${var.dcl_prefix}-${var.dcl_environment}-subnet-public-a"
        Project     = var.dcl_project
        Environment = var.dcl_environment
        Owner       = var.dcl_owner_team
        ManagedBy   = var.dcl_managed_by
    }
}

resource "aws_subnet" "dcl-dev-subnet-private-a" {
    vpc_id     = aws_vpc.dcl-dev-vpc.id
    cidr_block = "10.20.110.0/24"
    availability_zone = "us-east-1a"

    tags = {
        Name        = "${var.dcl_prefix}-${var.dcl_environment}-subnet-private-a"
        Project     = var.dcl_project
        Environment = var.dcl_environment
        Owner       = var.dcl_owner_team
        ManagedBy   = var.dcl_managed_by
    }
}

resource "aws_subnet" "dcl-dev-subnet-public-b" {
    vpc_id     = aws_vpc.dcl-dev-vpc.id
    cidr_block = "10.20.20.0/24"
    availability_zone = "us-east-1b"

    tags = {
        Name        = "${var.dcl_prefix}-${var.dcl_environment}-subnet-public-b"
        Project     = var.dcl_project
        Environment = var.dcl_environment
        Owner       = var.dcl_owner_team
        ManagedBy   = var.dcl_managed_by
    }
}

resource "aws_subnet" "dcl-dev-subnet-private-b" {
    vpc_id     = aws_vpc.dcl-dev-vpc.id
    cidr_block = "10.20.120.0/24"
    availability_zone = "us-east-1b"

    tags = {
        Name        = "${var.dcl_prefix}-${var.dcl_environment}-subnet-private-b"
        Project     = var.dcl_project
        Environment = var.dcl_environment
        Owner       = var.dcl_owner_team
        ManagedBy   = var.dcl_managed_by
    }
}