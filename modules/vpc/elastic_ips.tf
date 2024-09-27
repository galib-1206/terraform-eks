resource "aws_eip" "nat" {
  vpc = true
  tags = {
    Name = "${var.vpc_name}-nat-eip"
  }
}
