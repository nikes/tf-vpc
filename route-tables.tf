resource "aws_route_table" "public-route-table" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main.id
  }

  tags = {
    Name = "public-rtable-${var.env}"
  }
  tags_all = {
    Name = "public-rtable-${var.env}"
  }
}

resource "aws_route_table" "private-route-table-nat-a" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.private-nat-a.id
  }

  tags = {
    Name = "private-rtable-a-${var.env}"
  }
  tags_all = {
    Name = "private-rtable-a-${var.env}"
  }
}

resource "aws_route_table" "private-route-table-nat-b" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.private-nat-b.id
  }

  tags   = {
    Name = "private-rtable-b-${var.env}"
  }
  tags_all = {
    Name = "private-rtable-b-${var.env}"
  }
}

resource "aws_route_table" "private-route-table-nat-c" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.private-nat-c.id
  }

  tags   = {
    Name = "private-rtable-c-${var.env}"
  }
  tags_all = {
    Name = "private-rtable-c-${var.env}"
  }
}
