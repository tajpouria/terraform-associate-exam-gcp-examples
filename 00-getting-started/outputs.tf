output "network_ip" {
  value = google_compute_instance.my_instance.network_interface[0].network_ip
}

