variable "project_name" {
  description = "Nombre del proyecto para identificar recursos del RDS"
  type        = string
  default     = "mi_proyecto"
}

variable "environment" {
  description = "Ambiente para identificar recursos del RDS (ejemplo: dev, stage, prod)"
  type        = string
  default     = "dev"
}

variable "vpc_id" {}
variable "private_subnet_ids" {
  type = list(string)
}

variable "asg_security_group_id" {}

variable "db_name" {}
variable "db_user" {}
variable "db_password" {
  sensitive = true
}

