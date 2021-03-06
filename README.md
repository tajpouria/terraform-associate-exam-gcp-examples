# Terraform Associate Exam GCP Examples

A set of Terraform examples using [Google Cloud Provider](https://registry.terraform.io/providers/hashicorp/google/) that covers the ["HashiCorp Certified: Terraform Associate"](https://www.hashicorp.com/certification/terraform-associate) exam objectives.

[Getting Started](00-getting-started)

- Add GCP provider
- Configure credentials
- Configure a compute instance
- Create and set variables
- Create and set locals
- Create Terraform Cloud workspace
- Migrate local to remote workspace

[Provisioners](01-provisioners)

- Copy local SSH key into provisioned instance
- Use data directive to reference existing default VPC
- Configure cloud-init using template file data to install apache on provisioned instance
- Use local-exec to echo the instance private IP address into a text file on the local machine
- Use remote-exec and connection block to echo the instance private IP address into a text file on the remote instance
- Use file and connection block to copy a text file to the remote instance
- Configure a null resource which execute GCloud describe instance locally after instance provisioned

[Variables and Outputs](02-variables-and-outputs)

- Define machine type variable and specify that using terraform.tfvars and \*.auto.tfvars
- Specify machine type using environment variables
- Validate instance type variable using `can` and `regex` functions
- Move the instance resource to the sub module, expose instance public IP address as output and chain it on root module
- Define a data source which includes filter fields and reference in another resource

[Resource Meta Arguments](03-resource-meta-arguments)

- Provision an compute instance after creating a bucket using the `depends_on` directive
- Provision 2 compute instances using the `count` directive, and get all provisioned instances public IP address as output
- Provision 3 instances with different machine types using `for_each` directive, and get all provisioned instances public IP address as output
- Create 2 instances using different providers in different zones(reference providers using aliases), use data directive to specify the network of each instances, and get the public IP address of the instates as output
- Use `prevent_destroy` life cycle in one of the compute instances to prevent accidental destroy of that resource

[Expressions](04-expressions)

- Define a numeric variable and use string interpolation and directive(ternary operator) to get whether that variable is odd or even as output
- Define a map variable and use the `for` operator to iterate over them and return a list of key => values in uppercase
- Define a list variables containing 5 items, use the `for` operator to iterate over them and return a map as output with the each items index as the key and each item itself as value, if the index is a even number
- Define a list of maps with one property and use splat operator to get the that value as output
- Use dynamic blocks to specify ssh, icmp and tcp(80 and 443) in a compute firewall resource

[State](05-state)

- Provision a compute instance and use `terraform state list` and `terraform state show` to fetch the state
- Use `terraform state mv` to rename the provisioned instance

[Plan and Apply](06-plan--apply)

- Save the terraform `plan` output as a file and pass it `apply` to be applied

[Manage Resource Drift](07-manage-resource-drift)

- Provision a compute instance then use the `apply -replace` to replace it
- Terminate the instance manually through the GCP console then sync the terraform local state using the same apply `-refresh-only` command
- Create a bucket manually using GCP console then use the terraform `import` to import that bucket to the local state

[Troubleshooting](08-troubleshooting)

- Use `TF_LOG` and `TF_LOG_PATH` environment variables to generate a log file containing the core and provider logs on terraform apply

[Modules](09-modules)

- Create a custom module called `terraform-google-apache-hello-world` which provisions a compute instance with apache webserver on it and exposes the HTTP on a public IP address
- Use the module in the root module
- Tag and publish the module to the Terraform registry

[VSC workflow](10-vcs-workflow)

- Setup Terraform cloud Github integration, configure to run plan on pull requests and enable apply auto approval on main branch changes

[Backends](11-backends)

- Configure a standard backend using a GCS bucket with encryption enabled
- Setup a remote backend using Terraform cloud with two workspaces for development and staging environment with separate variables
- Create two projects, provision a VPC in one, and reference its state file using `terraform_remote_state` in a data directive in the other project, and use that VPC to provision a compute instance

[Complex types](12-complex-types)

- Create a following variables: list with type properly, object with type property, tuple with type property, list of objects with type property

[Workspaces](13-workspaces)

- Setup two workspaces, dev and prod, Use a standard GCS backend to keep track of the state files of those workspaces, provision and compute instance on each workspaces with a different machine type, micro for dev an small for prod workspace

[Packer introduction](14-packer-introduction)

- Build two packer images using docker builder and form ubuntu xenial and bionic sources
- Create one tag from the xenial, and two tags from the bionic packer images

[Terraform and Packer](15-packer-and-terraform)

- Use Packer to bake image an image from debian ubuntu source, install NGINX webserver on it and export it to GCS
- Reference the packer image in terraform compute engine, setup firewall rules and public IP address and fetch the NGINX default page

[Vault introduction](16-vault-introduction)

[Terraform and Vault](17-terraform-and-Vault)

[Terraform pull request automation with Atlantis](18-terraform-atlantis)
