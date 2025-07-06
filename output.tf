output "vpc_a_id" {
  description = "ID of VPC A"
  value       = aws_vpc.vpc_a.id
}

output "vpc_b_id" {
  description = "ID of VPC B"
  value       = aws_vpc.vpc_b.id
}

output "vpc_peering_connection_id" {
  description = "ID of the VPC peering connection"
  value       = aws_vpc_peering_connection.peer.id
}

output "subnet_a_id" {
  description = "ID of subnet A"
  value       = aws_subnet.subnet_a.id
}

output "subnet_b_id" {
  description = "ID of subnet B"
  value       = aws_subnet.subnet_b.id
}
