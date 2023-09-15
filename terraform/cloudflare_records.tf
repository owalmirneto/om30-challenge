variable "cloudflare_zone_id" {
  type = string
  sensitive = true
}

resource "cloudflare_record" "om30-challenge" {
  zone_id = var.cloudflare_zone_id
  name = "om30-challenge"
  value = "om30-challenge.onrender.com"
  type = "CNAME"
  proxied = true
}
