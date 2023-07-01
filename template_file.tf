data "template_file" "task_definition_template" {
  template = file("task_definition.json.tpl")
  vars = {
    REPOSITORY_URL = replace(aws_ecr_repository.container_test.repository_url, "https://", "")
  }
}