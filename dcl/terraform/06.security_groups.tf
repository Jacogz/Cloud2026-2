resource "aws_security_group" "dcl-dev-sg-public" {
    name        = "${var.dcl_prefix}-${var.dcl_environment}-sg-public"
    description = "Allow SSH from the team's current public IPv4 only"
    vpc_id      = aws_vpc.dcl-dev-vpc.id

    ingress {
        description = "SSH from team IP"
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = [var.dcl_ssh_allowed_cidr]
    }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name        = "${var.dcl_prefix}-${var.dcl_environment}-sg-public"
        Project     = var.dcl_project
        Environment = var.dcl_environment
        Owner       = var.dcl_owner_team
        ManagedBy   = var.dcl_managed_by
    }
}

resource "aws_security_group" "dcl-dev-sg-private" {
    name        = "${var.dcl_prefix}-${var.dcl_environment}-sg-private"
    description = "Allow ICMP only from the public security group"
    vpc_id      = aws_vpc.dcl-dev-vpc.id

    ingress {
        description     = "ICMP from public SG"
        from_port       = -1
        to_port         = -1
        protocol        = "icmp"
        security_groups = [aws_security_group.dcl-dev-sg-public.id]
    }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name        = "${var.dcl_prefix}-${var.dcl_environment}-sg-private"
        Project     = var.dcl_project
        Environment = var.dcl_environment
        Owner       = var.dcl_owner_team
        ManagedBy   = var.dcl_managed_by
    }
}
