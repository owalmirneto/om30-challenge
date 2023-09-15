variable "cloudflare_zone_id" {
  type = string
  sensitive = true
}

resource "cloudflare_record" "rails-challenge" {
  zone_id = var.cloudflare_zone_id
  name = "rails-challenge"
  value = "rails-challenge.onrender.com"
  type = "CNAME"
  proxied = true
}
