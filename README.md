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
- Use data directive to reference existing default VPC resource
- Configure cloud-init using template file data to install apache on provisioned instance
- Use local-exec to echo the instance private IP address into a text file on the local machine
- Use remote-exec and connection block to echo the instance private IP address into a text file on the remote instance
- Use file and connection block to copy a text file to the remote instance
