variable "aws_region" {
  type        = string
  description = "The region for your AWS infrastructure"
  default     = "eu-west-2"
}

variable "rds_instance_identifer" {
  type        = string
  description = "The name of your database instance on AWS"
  default     = "bookclub-database"
}

variable "database_name" {
  type        = string
  description = "The name of the database"
  default     = "getADatabaseName"
}

variable "database_username" {
  type        = string
  description = "The root username for MySQL"
  default     = "root"
}

variable "database_password" {
  type        = string
  description = "The password for the MySQL user - make sure this is a good password"
  default     = "getAPassword"
}
