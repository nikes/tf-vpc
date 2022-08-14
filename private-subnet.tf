resource "aws_subnet" "private-subnet-a" {
  vpc_id                              = aws_vpc.main.id
  availability_zone                   = "${data.aws_region.current.name}a"
  cidr_block                          = "10.0.64.0/20"
  private_dns_hostname_type_on_launch = "ip-name"
  tags                                = {
    Name = "private-subnet-a-${var.env}"
  }
  tags_all = {
    Name = "private-subnet-a-${var.env}"
  }
}

resource "aws_subnet" "private-subnet-b" {
  vpc_id                              = aws_vpc.main.id
  availability_zone                   = "${data.aws_region.current.name}b"
  cidr_block                          = "10.0.96.0/20"
  private_dns_hostname_type_on_launch = "ip-name"
  tags                                = {
    Name = "private-subnet-b-${var.env}"
  }
  tags_all = {
    Name = "private-subnet-b-${var.env}"
  }
}

resource "aws_subnet" "private-subnet-c" {
  vpc_id                              = aws_vpc.main.id
  availability_zone                   = "${data.aws_region.current.name}c"
  cidr_block                          = "10.0.128.0/20"
  private_dns_hostname_type_on_launch = "ip-name"
  tags                                = {
    Name = "private-subnet-c-${var.env}"
  }
  tags_all = {
    Name = "private-subnet-c-${var.env}"
  }
}
