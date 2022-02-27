module "apache_hello_world" {
  source                = "tajpouria/apache-hello-world/google"
  version               = "0.0.1"
  instance_name         = var.instance_name
  instance_machine_type = "e2-small"
}
