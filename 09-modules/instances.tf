module "apache_hello_world" {
  # Commented after testing locally and publish to Terraform registry
  # source                = "./terraform-google-apache-hello-world"
  source                = "tajpouria/apache-hello-world/google"
  version               = "0.0.1"
  instance_name         = "test-module"
  instance_machine_type = "e2-small"
}
