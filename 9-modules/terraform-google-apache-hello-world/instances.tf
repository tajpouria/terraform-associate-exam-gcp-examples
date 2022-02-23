resource "google_compute_instance" "default" {
  name         = var.instance_name
  machine_type = var.instance_machine_type

  tags = ["ssh-allow", "http-server", "https-server"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"

    access_config {
    }
  }

  metadata_startup_script = "sudo apt update && sudo apt install -y apache2"
}
