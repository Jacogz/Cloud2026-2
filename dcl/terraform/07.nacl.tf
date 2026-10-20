resource "aws_network_acl" "dcl-dev-nacl-private" {
    vpc_id = aws_vpc.dcl-dev-vpc.id
    subnet_ids = [
        aws_subnet.dcl-dev-subnet-private-a.id,
        aws_subnet.dcl-dev-subnet-private-b.id
    ]

    ingress {
        rule_no    = 100
        action     = "allow"
        protocol   = "-1"
        from_port  = 0
        to_port    = 0
        cidr_block = aws_vpc.dcl-dev-vpc.cidr_block
    }

    egress {
        rule_no    = 200
        action     = "allow"
        protocol   = "-1"
        from_port  = 0
        to_port    = 0
        cidr_block = aws_vpc.dcl-dev-vpc.cidr_block
    }
    
    tags = {
        Name        = "${var.dcl_prefix}-${var.dcl_environment}-nacl-private"
        Project     = var.dcl_project
        Environment = var.dcl_environment
        Owner       = var.dcl_owner_team
        ManagedBy   = var.dcl_managed_by
    }
}