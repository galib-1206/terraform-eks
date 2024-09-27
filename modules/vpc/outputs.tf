output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.this.id
}

output "public_subnets" {
  description = "The public subnets of the VPC"
  value       = aws_subnet.public[*].id
}

output "private_subnets" {
  description = "The private subnets of the VPC"
  value       = aws_subnet.private[*].id
}
