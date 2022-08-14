resource "aws_subnet" "public-subnet-a" {
  vpc_id                              = aws_vpc.main.id
  availability_zone                   = "${data.aws_region.current.name}a"
  cidr_block                          = "10.0.11.0/24"
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
  cidr_block                          = "10.0.12.0/24"
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
  cidr_block                          = "10.0.13.0/24"
  map_public_ip_on_launch             = true
  tags                                = {
    Name = "public-subnet-c-${var.env}"
  }
  tags_all = {
    Name = "public-subnet-c-${var.env}"
  }
}
