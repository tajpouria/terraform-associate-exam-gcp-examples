locals {
  initialize_params = {
    image = "debian-cloud/debian-9"
  }
}

resource "google_compute_instance" "instance" {
  name         = "instance"
  machine_type = var.machine_type

  boot_disk {
    initialize_params {
      image = local.initialize_params.image
    }
  }

  network_interface {
    network = var.network_name
    access_config {
    }
  }

  allow_stopping_for_update = true
}
