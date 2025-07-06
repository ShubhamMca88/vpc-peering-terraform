resource "aws_vpc" "vpc_a" {
  cidr_block = var.vpc_a_cidr
  tags = {
    Name = "vpc_a"
  }
}

resource "aws_subnet" "subnet_a" {
  vpc_id = aws_vpc.vpc_a.id
  cidr_block = var.subnet_a_cidr
  availability_zone = var.availability_zone
  tags = {
    Name = "subnet_a"
  }
}

resource "aws_route_table" "route_table_a" {
  vpc_id = aws_vpc.vpc_a.id
  tags = {
    Name = "route_table_a"
  }
}

resource "aws_route_table_association" "route_table_association_a" {
  subnet_id = aws_subnet.subnet_a.id
  route_table_id = aws_route_table.route_table_a.id
}