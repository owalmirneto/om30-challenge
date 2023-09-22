resource "aws_s3_bucket" "devops_s3_bucket" {
  bucket = local.aws_s3_bucket_name

  tags = {
    Name        = local.aws_s3_bucket_name
    Environment = local.aws_s3_bucket_environment
  }
}

resource "aws_s3_bucket_acl" "devops_s3_bucket_acl" {
  bucket     = aws_s3_bucket.devops_s3_bucket.id
  acl        = "private"
  depends_on = [aws_s3_bucket_ownership_controls.devops_s3_acl_ownership]
}

resource "aws_s3_bucket_ownership_controls" "devops_s3_acl_ownership" {
  bucket = aws_s3_bucket.devops_s3_bucket.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_public_access_block" "devops_s3_bucket" {
  bucket = aws_s3_bucket.devops_s3_bucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_acl" "devops_s3_bucket" {
  depends_on = [
    aws_s3_bucket_ownership_controls.devops_s3_acl_ownership,
    aws_s3_bucket_public_access_block.devops_s3_bucket,
  ]

  bucket = aws_s3_bucket.devops_s3_bucket.id
  acl    = "public-read"
}
