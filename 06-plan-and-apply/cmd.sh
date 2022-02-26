#! /bin/bash

terraform plan -out=./terraform.plan

terraform apply ./terraform.plan
