variable "project_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "force_destroy" {
  description = "Allow bucket deletion even if not empty (dev only)"
  type        = bool
  default     = false
}
