
resource "aws_autoscaling_group" "autoscaling_group" {
  launch_configuration = "${aws_launch_configuration.launch_configuration.id}"
  vpc_zone_identifier  = ["${var.private_subnet_b}", "${var.private_subnet_c}"]
  min_size             = 2
  max_size             = 2
  load_balancers       = ["${aws_elb.elb.name}"]
  health_check_type    = "ELB"

  tag {
    key                 = "Name"
    value               = "asg"
    propagate_at_launch = true
  }
}

resource "aws_launch_configuration" "launch_configuration" {
  image_id             = "ami-37df2255322"
  instance_type        = "t2.micro"
  security_groups      = ["${var.private_sg}"]
  iam_instance_profile = "${aws_iam_instance_profile.instance_profile.id}"
  lifecycle {
    create_before_destroy = true
  }
}
