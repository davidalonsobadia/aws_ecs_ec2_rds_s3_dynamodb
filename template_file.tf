data "template_file" "task_definition_template" {
  template = file("task_definition.json.tpl")
  vars = {
    REPOSITORY_URL = replace(aws_ecr_repository.container_test.repository_url, "https://", ""),
    CLOUDWATCH_ECS = aws_cloudwatch_log_group.ecs-logs.name,
    MYSQL_HOST                      = data.aws_db_instance.mysql.address,
    MYSQL_PORT                      = data.aws_db_instance.mysql.port,
    MYSQL_USERNAME                  = var.rds_username,
    MYSQL_PASSWORD                  = var.rds_password,
    DB_NAME                         = var.rds_db_name,
    AWS_S3_ACCESS_KEY_ID            = aws_iam_access_key.s3_user_access_key.id,
    AWS_S3_SECRET_ACCESS_KEY        = aws_iam_access_key.s3_user_access_key.secret,
    AWS_S3_BUCKET_NAME              = aws_s3_bucket.my_bucket.bucket,
    AWS_DYNAMODB_ACCESS_KEY_ID      = aws_iam_access_key.dynamodb_user_access_key.id,
    AWS_DYNAMODB_SECRET_ACCESS_KEY  = aws_iam_access_key.dynamodb_user_access_key.secret,
    AWS_REGION_NAME                 = var.aws_region
  }
}