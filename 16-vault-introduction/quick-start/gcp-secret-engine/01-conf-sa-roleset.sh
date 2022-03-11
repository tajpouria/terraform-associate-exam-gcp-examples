#!/bin/bash
PROJECT_ID=$(gcloud config get-value core/project)

vault write gcp/roleset/my-key-roleset \
    project="$PROJECT_ID" \
    secret_type="service_account_key"  \
    bindings=-<<EOF
      resource "//cloudresourcemanager.googleapis.com/projects/$PROJECT_ID" {
        roles = ["roles/viewer"]
      }
EOF
