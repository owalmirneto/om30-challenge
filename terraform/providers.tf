terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3.0"
    }
  }

  backend "pg" {}
}

variable "cloudflare_api_token" {
  type = string
  sensitive = true
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}
