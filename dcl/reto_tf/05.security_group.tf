resource "aws_security_group" "reto-sg-ec2" {
  name        = "${var.reto_prefix}-${var.reto_environment}-sg-ec2"
  description = "Challenge EC2 SG: no inbound, management via SSM Session Manager only"
  vpc_id      = aws_vpc.reto-vpc.id

  egress {
    description = "Allow all outbound, required for SSM and S3 access"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "${var.reto_prefix}-${var.reto_environment}-sg-ec2"
    Project     = var.reto_project
    Environment = var.reto_environment
    Owner       = var.reto_owner_team
    ManagedBy   = var.reto_managed_by
  }
}
