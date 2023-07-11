variable "rds_username" {
  type        = string
  description = "Username for Database"
  default = "admin"
}

variable "rds_password" {
  type        = string
  description = "Password for Database"
  default = "Administrator!123456"
}