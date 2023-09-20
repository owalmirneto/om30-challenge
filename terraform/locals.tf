locals {
  application_name = "om30-challenge"

  aws_region  = "us-east-1"
  aws_profile = local.application_name

  # aws_s3_bucket_name = "${local.application_name}-production"
  aws_s3_bucket_name        = local.application_name
  aws_s3_bucket_environment = "production"
}
