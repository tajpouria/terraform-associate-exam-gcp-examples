resource "google_compute_network" "default" {
  name = "project-one-vpc"
  auto_create_subnetworks = true
}

