resource "aws_ecs_task_definition" "task_definition" {
  family                = "container-task-test"
  container_definitions = data.template_file.task_definition_template.rendered

  depends_on = [
    data.aws_db_instance.mysql,
    aws_iam_user.s3_user,
    aws_iam_user.dynamodb_user
  ]
}