variable "aws_region" {
  type        = string
  description = "AWS Region name"
  default     = "us-east-1"
}

variable "rds_username" {
  type        = string
  description = "Username for Database"
}

variable "rds_password" {
  type        = string
  description = "Password for Database"
}

variable "rds_db_name" {
  type        = string
  description = "Database name"
}

variable "rds_port" {
  type        = number
  description = "Database port"
  default     = 3306 
}