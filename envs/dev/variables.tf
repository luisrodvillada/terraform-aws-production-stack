
variable "project_name" {
  description = "Nombre del proyecto para identificar recursos en el ambiente dev"
  type        = string
  default     = "mi_proyecto"
}

variable "environment" {
  description = "Ambiente para los recursos (dev, stage, prod)"
  type        = string
  default     = "dev"
}
