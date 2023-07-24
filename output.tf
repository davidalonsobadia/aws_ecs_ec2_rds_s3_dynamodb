output "rds_endpoint" {
  value = aws_db_instance.mysql.endpoint
}

output "ecr_repository_worker_endpoint" {
  value = aws_ecr_repository.container_test.repository_url
}