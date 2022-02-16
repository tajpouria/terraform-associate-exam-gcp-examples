# Terraform Associate Exam GCP Examples

A set Terraform examples using [Google Cloud Provider](https://registry.terraform.io/providers/hashicorp/google/) that covers the ["HashiCorp Certified: Terraform Associate"](https://www.hashicorp.com/certification/terraform-associate) exam objectives.

[Getting Started](0-getting-started)

- Add GCP provider
- Configure credentials
- Configure a compute instance
- Create and set variables
- Create and set locals
- Create Terraform Cloud workspace
- Migrate local to remote workspace

[Provisioners](1-provisioners)

- Copy local SSH key into provisioned instance
- Use data directive to reference existing default VPC
- Configure cloud-init using template file data to install apache on provisioned instance
- Use local-exec to echo the instance private IP address into a text file on the local machine
- Use remote-exec and connection block to echo the instance private IP address into a text file on the remote instance
- Use file and connection block to copy a text file to the remote instance
- Configure a null resource which execute GCloud describe instance locally after instance provisioned

[Variables & Outputs](2-variables&outputs)

- Define machine type variable and specify that using terraform.tfvars and \*.auto.tfvars
- Specify machine type using environment variables
- Validate instance type variable using `can` and `regex` functions
- Move the instance resource to the a sub module, expose instance public IP address as output and chain it on root module
- Define a data source which includes filter fields and reference in another resource

[Resource Meta Arguments](3-resource-meta-arguments)

- Provision an compute instance after creating a bucket using the `depends_on` directive
- Provision 2 compute instances using the `count` directive, and get all provisioned instances public IP address as output
- Provision 3 instances with different machine types using `for_each` directive, and get all provisioned instances public IP address as output
- Create 2 instances using different providers in different zones(reference providers using aliases), use data directive to specify the network of each instances, and get the public IP address of the the instates as output
- Use `prevent_destroy` lifecycle in one of the compute instances to prevent accidental destroy of that resource


[Expression](4-expression)
5.15.5
