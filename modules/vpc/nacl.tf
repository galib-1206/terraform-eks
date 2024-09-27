resource "aws_network_acl" "public" {
  vpc_id = aws_vpc.this.id
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_block  = "0.0.0.0/0"
    rule_no     = 100
    action      = "allow"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_block  = "0.0.0.0/0"
    rule_no     = 100
    action      = "allow"
  }

  tags = {
    Name = "${var.vpc_name}-public-nacl"
  }
}
