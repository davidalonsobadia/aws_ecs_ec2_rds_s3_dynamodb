resource "aws_launch_template" "engine" {
  name          = "launch-template-test"
  # image_id      = "ami-06b09bfacae1453cb" // The current AMI Amazon Linux 2
  image_id      = "ami-0d536b9bd6d2b7f39" 
  instance_type = "t3.micro"
  user_data     = base64encode("#!/bin/bash\necho ECS_CLUSTER=my-cluster >> /etc/ecs/ecs.config")

  vpc_security_group_ids = [aws_security_group.ecs_sg.id]
  iam_instance_profile {
    name = aws_iam_instance_profile.ecs_agent.name
  }
}

resource "aws_autoscaling_group" "ecs_asg" {
  name                 = "asg"
  vpc_zone_identifier  = [aws_subnet.pub_subnet.id, aws_subnet.pub_subnet_2.id]

  desired_capacity          = 2
  min_size                  = 1
  max_size                  = 10
  health_check_grace_period = 300
  health_check_type         = "EC2"

  launch_template {
    id = aws_launch_template.engine.id
  }
}
