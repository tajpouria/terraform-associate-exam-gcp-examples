module "instances_submodule" {
  source = "./instances_submodule"

  region       = var.region
  zone         = var.zone
  project      = var.project
  machine_type = var.machine_type
  network_name = data.google_compute_network.default.name
}

output "public_ip" {
  value = module.instances_submodule.public_ip
}
