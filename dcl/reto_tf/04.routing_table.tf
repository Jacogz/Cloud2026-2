resource "aws_route_table" "reto-rt-public" {
  vpc_id = aws_vpc.reto-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.reto-igw.id
  }

  tags = {
    Name        = "${var.reto_prefix}-${var.reto_environment}-rt-public"
    Project     = var.reto_project
    Environment = var.reto_environment
    Owner       = var.reto_owner_team
    ManagedBy   = var.reto_managed_by
  }
}

resource "aws_route_table_association" "reto-rt-assoc-public-a" {
  subnet_id      = aws_subnet.reto-subnet-public-a.id
  route_table_id = aws_route_table.reto-rt-public.id
}
