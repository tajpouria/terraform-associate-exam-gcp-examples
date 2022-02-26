output "public_ip_instance0" {
  value = google_compute_instance.instance0.network_interface[0].access_config[0].nat_ip
}

output "public_ip_instances_count" {
  value = google_compute_instance.instances_count[*].network_interface[0].access_config[0].nat_ip
}

output "public_ip_instances_foreach" {
  value = values(google_compute_instance.instances_foreach)[*].network_interface[0].access_config[0].nat_ip
}

output "public_ip_instance_provider_east" {
  value = google_compute_instance.instance_provider_east.network_interface[0].access_config[0].nat_ip
}

output "public_ip_instance_provider_west" {
  value = google_compute_instance.instance_provider_west.network_interface[0].access_config[0].nat_ip
}
