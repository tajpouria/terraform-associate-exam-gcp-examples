variable "project" {
  type = string
}

variable "region" {
  type = string
}

variable "zone" {
  type = string
}

variable "machine_type" {
  type = string
  validation {
    condition = can(regex("^e2", var.machine_type))
    error_message = "The machine type must be chosen from e2 Family."
  }
}

variable "network_name" {
  type = string
}
