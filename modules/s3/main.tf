resource "aws_s3_bucket" "static" {
  bucket = "${var.project_name}-${var.environment}-static"

  force_destroy = var.force_destroy

  tags = {
    Name        = "${var.project_name}-${var.environment}-static"
    Environment = var.environment
  }
}

//Bucket for access logs ALB

resource "aws_s3_bucket" "alb_logs" {
  bucket = "${var.project_name}-${var.environment}-alb-logs"

  force_destroy = var.force_destroy

  tags = {
    Name        = "${var.project_name}-${var.environment}-alb-logs"
    Environment = var.environment
  }
}

//Policy to permit logs from ALB

data "aws_elb_service_account" "this" {}

resource "aws_s3_bucket_policy" "alb_logs" {
  bucket = aws_s3_bucket.alb_logs.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          AWS = data.aws_elb_service_account.this.arn
        }
        Action   = "s3:PutObject"
        Resource = "${aws_s3_bucket.alb_logs.arn}/*"
      }
    ]
  })
}
