resource "aws_autoscaling_group" "this" {
  launch_configuration = aws_launch_configuration.this.id
  min_size            = 1
  max_size            = 5
  desired_capacity    = 2

  vpc_zone_identifier = var.subnet_ids
}
