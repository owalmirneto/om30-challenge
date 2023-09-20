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
    object_ownership = "ObjectWriter"
  }
}
