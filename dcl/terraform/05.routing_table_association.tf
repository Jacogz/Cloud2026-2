resource "aws_route_table_association" "dcl-dev-rt-assoc-public-a" {
  subnet_id      = aws_subnet.dcl-dev-subnet-public-a.id
  route_table_id = aws_route_table.dcl-dev-rt-public.id
}

resource "aws_route_table_association" "dcl-dev-rt-assoc-public-b" {
  subnet_id      = aws_subnet.dcl-dev-subnet-public-b.id
  route_table_id = aws_route_table.dcl-dev-rt-public.id
}

resource "aws_route_table_association" "dcl-dev-rt-assoc-private-a" {
  subnet_id      = aws_subnet.dcl-dev-subnet-private-a.id
  route_table_id = aws_route_table.dcl-dev-rt-private.id
}

resource "aws_route_table_association" "dcl-dev-rt-assoc-private-b" {
  subnet_id      = aws_subnet.dcl-dev-subnet-private-b.id
  route_table_id = aws_route_table.dcl-dev-rt-private.id
}
