resource "aws_nat_gateway" "this" {
  count = var.nat_gateway_enabled ? 1 : 0
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public[0].id
  tags = {
    Name = "${var.vpc_name}-nat"
  }
}
