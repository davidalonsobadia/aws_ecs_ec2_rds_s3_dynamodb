data "aws_db_instance" "mysql" {
    db_instance_identifier = aws_db_instance.mysql.id
}