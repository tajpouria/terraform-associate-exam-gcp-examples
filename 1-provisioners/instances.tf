locals {
  machine_type = "e2-small"
  initialize_params = {
    image = "debian-cloud/debian-9"
  }
}

resource "google_compute_instance" "instace" {
  name         = "instace"
  machine_type = local.machine_type

  tags = ["web"]

  boot_disk {
    initialize_params {
      image = local.initialize_params.image
    }
  }

  network_interface {
    network = data.google_compute_network.default.name
    access_config {
    }
  }

  metadata = {
    ssh-keys  = "${var.ssh_user}:${var.ssh_pub_key}" // Dont forgot to run `chmod 400 id_rsa`to run ssh
    user-data = "${data.template_file.user_data.rendered}"
  }

  allow_stopping_for_update = true
}

