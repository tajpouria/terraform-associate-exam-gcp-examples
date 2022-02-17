resource "google_compute_instance" "instance0" {
  name         = "instance0"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = data.google_compute_network.default.name

    access_config {
    }
  }

  depends_on = [
    google_storage_bucket.tajpouria_bucket0,
  ]
}

resource "google_compute_instance" "instances_count" {
  count = 2

  name         = "instances-count-${count.index}"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = data.google_compute_network.default.name

    access_config {
    }
  }
}

resource "google_compute_instance" "instances_foreach" {
  for_each = {
    "e2-micro"  = "e2-micro"
    "e2-small"  = "e2-small"
    "e2-medium" = "e2-medium"
  }

  name         = "instances-foreach-${each.key}"
  machine_type = each.value
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = data.google_compute_network.default.name

    access_config {
    }
  }
}

resource "google_compute_instance" "instance_provider_east" {
  provider = google.east

  name         = "instance-provider-east"
  machine_type = "e2-medium"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = data.google_compute_network.default.name

    access_config {
    }
  }

  depends_on = [
    google_storage_bucket.tajpouria_bucket0,
  ]

  lifecycle {
    prevent_destroy = true
  }
}

resource "google_compute_instance" "instance_provider_west" {
  provider = google.west

  name         = "instance-provider-west"
  machine_type = "e2-medium"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = data.google_compute_network.default.name

    access_config {
    }
  }

  depends_on = [
    google_storage_bucket.tajpouria_bucket0,
  ]
}
