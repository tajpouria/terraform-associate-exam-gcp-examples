resource "google_compute_instance" "default" {
  name         = "test"
  machine_type = "e2-medium"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = data.terraform_remote_state.project_one_state.outputs.vpc_name

    access_config {
    }
  }
}
