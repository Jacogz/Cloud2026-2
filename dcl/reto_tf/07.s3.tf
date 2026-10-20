resource "aws_s3_bucket" "reto-bucket" {
  bucket = "${var.reto_prefix}-${var.reto_environment}-${data.aws_caller_identity.current.account_id}"
  force_destroy = true

  tags = {
    Name        = "${var.reto_prefix}-${var.reto_environment}-bucket"
    Project     = var.reto_project
    Environment = var.reto_environment
    Owner       = var.reto_owner_team
    ManagedBy   = var.reto_managed_by
  }
}

resource "aws_s3_bucket_public_access_block" "reto-bucket" {
  bucket = aws_s3_bucket.reto-bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
