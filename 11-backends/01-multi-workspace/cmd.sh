# Fist of all I created two distinct workspaces on Terraform cloud,
# multi-workspace-develop and multi-workspace-staging.

terraform init

# Switch between workspaces
terraform wokspace select dev
terraform wokspace select staging

# List workspaces and highlight the active one
terraform workspace list

# In order to setup multi workspaces locally or standard back ends,
# use the following command to create workspaces 
terraform workspace new dev
terraform workspace new staging

