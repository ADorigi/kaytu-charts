resource "digitalocean_kubernetes_cluster" "kaytu-charts" {
  name   = "kaytu-charts"
  region = "nyc1"
  # Grab the latest version slug from `doctl kubernetes options versions`
  version = "1.31.1-do.1"

  node_pool {
    name       = "kaytu-charts-node-pool"
    size       = "g-2vcpu-8gb"
    node_count = 3

  }
}