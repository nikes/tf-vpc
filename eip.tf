resource "aws_eip" "eip-nat-a" {
  vpc  = true
  tags = {
    Name = "eip-nat-a-${var.env}"
  }
  tags_all = {
    Name = "eip-nat-a-${var.env}"
  }
}

resource "aws_eip" "eip-nat-b" {
  vpc  = true
  tags = {
    Name = "eip-nat-b-${var.env}"
  }
  tags_all = {
    Name = "eip-nat-b-${var.env}"
  }
}

resource "aws_eip" "eip-nat-c" {
  vpc  = true
  tags = {
    Name = "eip-nat-c-${var.env}"
  }
  tags_all = {
    Name = "eip-nat-c-${var.env}"
  }
}
