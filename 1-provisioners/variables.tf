variable "project" {
  type = string
}

variable "region" {
  type = string
}

variable "zone" {
  type = string
}

variable "ssh_user" {
  type = string
}

variable "ssh_pub_key" {
  type      = string
  sensitive = true
}
