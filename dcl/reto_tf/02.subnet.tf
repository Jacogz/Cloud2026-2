resource "aws_subnet" "reto-subnet-public-a" {
  vpc_id                  = aws_vpc.reto-vpc.id
  cidr_block              = "10.99.1.0/24"
  availability_zone       = "${var.reto_region}a"
  map_public_ip_on_launch = true

  tags = {
    Name        = "${var.reto_prefix}-${var.reto_environment}-subnet-public-a"
    Project     = var.reto_project
    Environment = var.reto_environment
    Owner       = var.reto_owner_team
    ManagedBy   = var.reto_managed_by
  }
}
