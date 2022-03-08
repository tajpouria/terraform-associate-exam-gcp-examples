module "apache_hello_world" {
  source                = "tajpouria/apache-hello-world/google"
  version               = "0.0.1"
  instance_name         = "test-module"
  instance_machine_type = terraform.workspace == "dev" ? "e2-micro" : "e2-small"
}
