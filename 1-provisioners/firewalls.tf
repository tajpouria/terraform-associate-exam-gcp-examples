resource "google_compute_firewall" "default" {
  name    = "test-firewall"
  network = data.google_compute_network.default.name

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80", "22"]
  }

  source_tags = ["web"]
}
