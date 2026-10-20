resource "aws_internet_gateway" "reto-igw" {
  vpc_id = aws_vpc.reto-vpc.id

  tags = {
    Name        = "${var.reto_prefix}-${var.reto_environment}-igw"
    Project     = var.reto_project
    Environment = var.reto_environment
    Owner       = var.reto_owner_team
    ManagedBy   = var.reto_managed_by
  }
}
