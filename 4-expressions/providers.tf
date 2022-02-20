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
  region  = "us-center1"
  zone    = "us-center1-a"
}
