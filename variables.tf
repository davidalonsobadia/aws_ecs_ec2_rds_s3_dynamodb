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
  type        = string
  description = "Database port"
  default     = "3306" 
}