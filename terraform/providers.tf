terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }

    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3.0"
    }
  }

  backend "pg" {}
}

provider "aws" {
  region  = local.aws_region
  profile = local.aws_profile
}

variable "cloudflare_api_token" {
  type      = string
  sensitive = true
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}
