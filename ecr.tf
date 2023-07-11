resource "aws_ecr_repository" "container_test" {
  name = "container-test"

  lifecycle {
    prevent_destroy = true
  }
}