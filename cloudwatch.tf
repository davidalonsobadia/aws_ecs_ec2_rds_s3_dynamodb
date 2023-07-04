resource "aws_cloudwatch_log_group" "ecs-logs" {
  name = "/ecs-ec2-logs"
  retention_in_days = 1
}