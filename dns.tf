locals {
  infernocircus_club_domain = "infernocircus.club"
  minecraft_subdomain = "mc"
  minecraft_ip = "8.48.32.35"
  minecraft_port = 31417
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
  name = local.infernocircus_club_domain
}

resource "digitalocean_record" "mc-infernocircus-club" {
  domain = digitalocean_domain.infernocircus-club.id
  type = "A"
  name = local.minecraft_subdomain
  value = local.minecraft_ip
}

# resource "digitalocean_record" "mc-infernocircus-club-minecraft-tcp-srv" {
#   domain = digitalocean_domain.infernocircus-club.id
#   type = "SRV"
#   name = "_minecraft._tcp.${local.minecraft_subdomain}"
#   value = digitalocean_record.mc-infernocircus-club.fqdn
#   port = local.minecraft_port
#   priority = 0
#   weight = 5
# }
