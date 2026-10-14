resource "aws_route_table" "dcl-dev-rt-public" {
 vpc_id = aws_vpc.dcl-dev-vpc.id

 route {
   cidr_block = "0.0.0.0/0"
   gateway_id = aws_internet_gateway.dcl-dev-igw.id
 }

 tags = {
        Name        = "${var.dcl_prefix}-${var.dcl_environment}-rt-public"
        Project     = var.dcl_project
        Environment = var.dcl_environment
        Owner       = var.dcl_owner_team
        ManagedBy   = var.dcl_managed_by
    }
}

resource "aws_route_table" "dcl-dev-rt-private" {
 vpc_id = aws_vpc.dcl-dev-vpc.id

 tags = {
        Name        = "${var.dcl_prefix}-${var.dcl_environment}-rt-private"
        Project     = var.dcl_project
        Environment = var.dcl_environment
        Owner       = var.dcl_owner_team
        ManagedBy   = var.dcl_managed_by
    }
}