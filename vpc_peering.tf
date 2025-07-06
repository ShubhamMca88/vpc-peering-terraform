# VPC Peering Connection
resource "aws_vpc_peering_connection" "peer" {
  peer_vpc_id = aws_vpc.vpc_b.id
  vpc_id      = aws_vpc.vpc_a.id
  auto_accept = true

  tags = {
    Name = "VPC-A-to-VPC-B-Peering"
  }
}

# Route from VPC A to VPC B
resource "aws_route" "route_a_to_b" {
  route_table_id            = aws_route_table.route_table_a.id
  destination_cidr_block    = var.vpc_b_cidr
  vpc_peering_connection_id = aws_vpc_peering_connection.peer.id
}

# Route from VPC B to VPC A
resource "aws_route" "route_b_to_a" {
  route_table_id            = aws_route_table.rt_b.id
  destination_cidr_block    = var.vpc_a_cidr
  vpc_peering_connection_id = aws_vpc_peering_connection.peer.id
}