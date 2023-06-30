data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-ecs-hvm-*-x86_64-ebs"]
  }
}

resource "aws_launch_configuration" "ecs_launch_config" {
  image_id             = data.aws_ami.ubuntu.id
  iam_instance_profile = aws_iam_instance_profile.ecs_agent.name
  security_groups      = [aws_security_group.ecs_sg.id]
  user_data            = "#!/bin/bash\necho ECS_CLUSTER=my-cluster >> /etc/ecs/ecs.config"
  instance_type        = "t2.micro"
}

resource "aws_autoscaling_group" "failure_analysis_ecs_asg" {
  name                 = "asg"
  vpc_zone_identifier  = [aws_subnet.pub_subnet.id, aws_subnet.pub_subnet_2.id]
  launch_configuration = aws_launch_configuration.ecs_launch_config.name

  desired_capacity          = 2
  min_size                  = 1
  max_size                  = 10
  health_check_grace_period = 300
  health_check_type         = "EC2"
}
