locals {
  subnets = {
    subnet_region = "us-center1"
  }
}


module "vpc" {
  source  = "terraform-google-modules/network/google"
  version = "~> 4.0"

  project_id   = var.project
  network_name = "my-network"
  routing_mode = "GLOBAL"

  subnets = [
    {
      subnet_name   = "subnet-01"
      subnet_ip     = "10.10.10.0/24"
      subnet_region = local.subnets.subnet_region
    }
  ]
}

