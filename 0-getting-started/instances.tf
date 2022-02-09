locals {
  machine_type = "e2-small"
  initialize_params = {
    image = "debian-cloud/debian-9"
  }
  network_interface = {
    network = "default"
  }
}

resource "google_compute_instance" "my_instance" {
  name         = "instace1"
  machine_type = local.machine_type

  boot_disk {
    initialize_params {
      image = local.initialize_params.image
    }
  }

  network_interface {
    network = local.network_interface.network
  }

  allow_stopping_for_update = true
}

