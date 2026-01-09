resource "aws_ecr_repository" "this" {
  name = "${var.project_name}-${var.environment}-${var.repository_name}"

  image_scanning_configuration {
    scan_on_push = true
  }

  image_tag_mutability = "IMMUTABLE"

  encryption_configuration {
    encryption_type = "AES256"
  }

  tags = {
    Project     = var.project_name
    Environment = var.environment
  }
}
