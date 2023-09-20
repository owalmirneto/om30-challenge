variable "cloudflare_zone_id" {
  type = string
  sensitive = true
}

resource "cloudflare_record" "om30_challenge" {
  zone_id = var.cloudflare_zone_id
  name = local.application_name
  value = "${local.application_name}.onrender.com"
  type = "CNAME"
  proxied = true
}
