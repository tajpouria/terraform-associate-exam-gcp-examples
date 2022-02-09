data "google_compute_network" "default" {
  name = "default"
}

data "template_file" "user_data" {
  template = file("./user-data.yaml")
}
