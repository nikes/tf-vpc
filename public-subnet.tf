resource "aws_subnet" "public-subnet-a" {
  vpc_id                              = aws_vpc.main.id
  availability_zone                   = "${data.aws_region.current.name}a"
  cidr_block                          = "10.0.0.0/20"
  map_public_ip_on_launch             = true
  tags                                = {
    Name = "public-subnet-a-${var.env}"
  }
  tags_all = {
    Name = "public-subnet-a-${var.env}"
  }
}

resource "aws_subnet" "public-subnet-b" {
  vpc_id                              = aws_vpc.main.id
  availability_zone                   = "${data.aws_region.current.name}b"
  cidr_block                          = "10.0.16.0/20"
  map_public_ip_on_launch             = true
  tags                                = {
    Name = "public-subnet-b-${var.env}"
  }
  tags_all = {
    Name = "public-subnet-b-${var.env}"
  }
}

resource "aws_subnet" "public-subnet-c" {
  vpc_id                              = aws_vpc.main.id
  availability_zone                   = "${data.aws_region.current.name}c"
  cidr_block                          = "10.0.32.0/20"
  map_public_ip_on_launch             = true
  tags                                = {
    Name = "public-subnet-c-${var.env}"
  }
  tags_all = {
    Name = "public-subnet-c-${var.env}"
  }
}
