locals {
  domain_infernocircus_club = "infernocircus.club"
}

# resource "namecheap_domain_records" "infernocircus-club" {
#   domain = local.domain_infernocircus_club
#   mode = "OVERWRITE"
#   nameservers = [
#     "ns1.digitalocean.com",
#     "ns2.digitalocean.com",
#     "ns3.digitalocean.com",
#   ]
# }

resource "digitalocean_domain" "infernocircus-club" {
  # name = namecheap_domain_records.infernocircus-club.domain
  name = local.domain_infernocircus_club
}

resource "digitalocean_record" "mc-infernocircus-club" {
  domain = digitalocean_domain.infernocircus-club.id
  type = "A"
  name = "mc"
  value = "8.48.32.35"
}

resource "digitalocean_record" "mc-infernocircus-club-minecraft-tcp-srv" {
  domain = digitalocean_domain.infernocircus-club.id
  type = "SRV"
  name = "_minecraft._tcp.mc"
  value = "mc.infernocircus.club"
  port = 31417
  priority = 0
  weight = 5
}
