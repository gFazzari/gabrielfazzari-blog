data "cloudflare_zones" "zones" {
  for_each = toset(var.domains)
  name = each.value
}
