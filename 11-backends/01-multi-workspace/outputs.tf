output "public_ip" {
  # Here's some arbitrary changes to test Terraform cloud trigger
  value = module.apache_hello_world.public_ip
}
