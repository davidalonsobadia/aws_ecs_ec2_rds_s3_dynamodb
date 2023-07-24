variable "rds_username" {
  type        = string
  description = "Username for Database"
  default     = "admin"
}

variable "rds_password" {
  type        = string
  description = "Password for Database"
  default     = "Administrator!123456"
}

variable "rds_db_name" {
  type        = string
  description = "Database name"
  default     = "test_db"
}

variable "rds_port" {
  type        = number
  description = "Database port"
  default     = 3306 
}