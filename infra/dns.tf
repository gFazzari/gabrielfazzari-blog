resource "cloudflare_dns_record" "root" {
  for_each = data.cloudflare_zones.zones
  zone_id  = each.value.result[0].id
  name     = each.key
  content  = cloudflare_pages_project.site.subdomain
  type     = "CNAME"
  ttl      = 1
  proxied  = true
}

resource "cloudflare_dns_record" "www" {
  for_each = data.cloudflare_zones.zones
  zone_id  = each.value.result[0].id
  name     = "www.${each.key}"
  content  = cloudflare_dns_record.root[each.key].content
  type     = "CNAME"
  ttl      = 1
  proxied  = true
}
