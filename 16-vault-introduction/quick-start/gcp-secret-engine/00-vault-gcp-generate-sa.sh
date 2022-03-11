#!/bin/bash

set -x

PROJECT_ID=$(gcloud config get-value core/project)
VAULT_SA="tf-associate-vault@$PROJECT_ID.iam.gserviceaccount.com"

gcloud iam service-accounts create tf-associate-vault --display-name 'TF Associate Vault'

gcloud iam service-accounts keys create "$HOME/.secret/google/tf-associate-vault.json" --iam-account="$VAULT_SA"

roles=(
	'roles/iam.serviceAccountAdmin'
	'roles/iam.serviceAccountKeyAdmin'
	'roles/resourcemanager.projectIamAdmin'
)
	
for i in "${roles[@]}"; do
	gcloud projects add-iam-policy-binding "$PROJECT_ID" --member="serviceAccount:$VAULT_SA" --role="$i"
done

