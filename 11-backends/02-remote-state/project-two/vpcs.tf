data "terraform_remote_state" "project_one_state" {
  backend = "local"

  config = {
    path = "../project-one/terraform.tfstate"
  }
}

