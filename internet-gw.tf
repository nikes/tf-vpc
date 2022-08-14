resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "internet-gw-${var.env}"
  }
  tags_all = {
    Name = "internet-gw-${var.env}"
  }
}
