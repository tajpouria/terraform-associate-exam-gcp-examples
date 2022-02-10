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

variable "ssh_pv_key_path" {
  type      = string
  sensitive = true
}
