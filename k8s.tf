resource "digitalocean_kubernetes_cluster" "main-cluster" {
  name    = "main-cluster"
  region  = "nyc1"
  version = "1.30.2-do.0"

  node_pool {
    name       = "base-infrastructure-pool"
    size       = "s-1vcpu-2gb"
    auto_scale = true
    min_nodes  = 1
    max_nodes  = 2
  }
}

# resource "digitalocean_kubernetes_node_pool" "rtmptransform-pool" {
#   cluster_id = digitalocean_kubernetes_cluster.main-cluster.id
#   name       = "rtmptransform-pool"
#   size       = "s-2vcpu-2gb"
#   auto_scale = true
#   min_nodes  = 1
#   max_nodes  = 3
# }
