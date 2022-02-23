variable "instance_name" {
  type        = string
  default     = "test"
  description = "The name of provisioned instance."
}

variable "instance_machine_type" {
  type        = string
  default     = "e2-medium"
  description = "The machine type of the provisioned instance."
}
