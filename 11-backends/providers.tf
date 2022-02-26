terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.11.0"
    }
  }

  backend "gcs" {
    bucket         = "tf-state-prod-443"
    prefix         = "terraform/state"
    encryption_key = "EWWJyukdypRAWaxwKZ42mlA73XQq5+5zrx+FyW8+QnI="
  }
}

provider "google" {
  project = var.project
  region  = "us-central1"
  zone    = "us-central1-a"
}
