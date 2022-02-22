# After syncing state, commenting(removing) this instance
# so configuration file matches the latest the remote state
# resource "google_compute_instance" "default" {
#   name         = "test"
#   machine_type = "e2-medium"

#   tags = ["foo", "bar"]

#   boot_disk {
#     initialize_params {
#       image = "debian-cloud/debian-9"
#     }
#   }

#   network_interface {
#     network = "default"

#     access_config {
#     }
#   }
# }
