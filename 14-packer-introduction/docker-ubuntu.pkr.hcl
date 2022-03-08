variable "docker_image" {
  type    = string
  default = "ubuntu:xenial"
}

packer {
  required_plugins {
    docker = {
      version = ">= 0.0.7"
      source  = "github.com/hashicorp/docker"
    }
  }
}

source "docker" "ubuntu" {
  image  = var.docker_image
  commit = true
}

source "docker" "ubuntu-bionic" {
  image  = "ubuntu:bionic"
  commit = true
}

build {
  name = "learn-packer"
  sources = [
    "source.docker.ubuntu",
    "source.docker.ubuntu-bionic"
  ]

  provisioner "shell" {
    environment_vars = [
      "Foo='Hello World!'",
    ]
    inline = [
      "echo Adding file to Docker container",
      "echo \"Foo is $Foo\" > example.txt",
    ]
  }
  provisioner "shell" {
    inline = [
      "echo \"Running ${var.docker_image} Docker image.\"",
    ]
  }

  post-processor "docker-tag" {
    repository = "learn-packer"
    tags       = ["ubuntu-xenial"]
    only       = ["docker.ubuntu"]
  }

  post-processor "docker-tag" {
    repository = "learn-packer"
    tags       = ["ubuntu-bionic", "packer-rocks"]
    only       = ["docker.ubuntu-bionic"]
  }
}
