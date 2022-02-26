data "google_compute_network" "default" {
  name = "default"
}

locals {
  firewall_allow_rules = [
    {
      protocol = "icmp"
      ports    = []
    },
    {
      protocol = "tcp"
      ports    = ["80", "443", "22"]
    }
  ]
}

resource "google_compute_firewall" "default" {
  name    = "test-firewall"
  network = data.google_compute_network.default.name


  dynamic "allow" {
    for_each = local.firewall_allow_rules
    content {
      protocol = allow.value["protocol"]
      ports    = allow.value["ports"]
    }
  }

  source_tags = ["web"]
}
