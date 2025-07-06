resource "aws_vpc" "vpc_b" {
  cidr_block = var.vpc_b_cidr
  tags = {
    Name = "vpc_b"
  }
}

resource "aws_subnet" "subnet_b" {
  vpc_id            = aws_vpc.vpc_b.id
  cidr_block        = var.subnet_b_cidr
  availability_zone = var.availability_zone_b
  tags = {
    Name = "subnet_b"
  }
}

resource "aws_route_table" "rt_b" {
  vpc_id = aws_vpc.vpc_b.id
  tags = {
    Name = "route_table_b"
  }
}

resource "aws_route_table_association" "rta_b" {
  subnet_id      = aws_subnet.subnet_b.id
  route_table_id = aws_route_table.rt_b.id
}
