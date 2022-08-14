resource "aws_nat_gateway" "private-nat-a" {
  allocation_id = aws_eip.eip-nat-a.id
  subnet_id     = aws_subnet.private-subnet-a.id
  depends_on    = [aws_internet_gateway.main]
  tags          = {
    Name = "private-nat-a-${var.env}"
  }
  tags_all = {
    Name = "private-nat-a-${var.env}"
  }
}

resource "aws_nat_gateway" "private-nat-b" {
  allocation_id = aws_eip.eip-nat-b.id
  subnet_id     = aws_subnet.private-subnet-b.id
  depends_on    = [aws_internet_gateway.main]
  tags          = {
    Name = "private-nat-b-${var.env}"
  }
  tags_all = {
    Name = "private-nat-b-${var.env}"
  }
}

resource "aws_nat_gateway" "private-nat-c" {
  allocation_id = aws_eip.eip-nat-c.id
  subnet_id     = aws_subnet.private-subnet-c.id
  depends_on    = [aws_internet_gateway.main]
  tags          = {
    Name = "private-nat-c-${var.env}"
  }
  tags_all = {
    Name = "private-nat-c-${var.env}"
  }
}
