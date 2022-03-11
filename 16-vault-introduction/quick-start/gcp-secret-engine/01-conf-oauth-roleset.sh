#!/bin/bash
PROJECT_ID=$(gcloud config get-value core/project)

vault write gcp/roleset/my-token-roleset \
    project="$PROJECT_ID" \
    secret_type="access_token"  \
    token_scopes="https://www.googleapis.com/auth/cloud-platform" \
    bindings=-<<EOF
      resource "//cloudresourcemanager.googleapis.com/projects/$PROJECT_ID" {
        roles = ["roles/viewer"]
      }
EOF
