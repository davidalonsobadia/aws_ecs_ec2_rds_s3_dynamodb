resource "aws_db_instance" "mysql" {
  identifier                = "mysql"
  allocated_storage         = 5
  multi_az                  = false
  engine                    = "mysql"
  engine_version            = "8.0.32"
  instance_class            = "db.t3.micro"
  db_name                   = var.rds_db_name
  username                  = var.rds_username
  password                  = var.rds_password
  port                      = var.rds_port
  db_subnet_group_name      = aws_db_subnet_group.db_subnet_group.id
  vpc_security_group_ids    = [aws_security_group.rds_sg.id, aws_security_group.ecs_sg.id]
  skip_final_snapshot       = true
  final_snapshot_identifier = "worker-final"
  publicly_accessible       = false
}