provider "google" {
  project = var.project
  region  = "us-central1"
  zone    = "us-central1-a"
}

provider "google" {
  project = var.project
  region  = "us-east1"
  zone    = "us-east1-b"

  alias = "east"
}

provider "google" {
  project = var.project
  region  = "us-west1"
  zone    = "us-west1-a"

  alias = "west"
}
