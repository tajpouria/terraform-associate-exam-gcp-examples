terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.11.0"
    }
  }
}

provider "google" {
  project = var.project
  region  = "us-central1"
  zone    = "us-central1-a"
}
