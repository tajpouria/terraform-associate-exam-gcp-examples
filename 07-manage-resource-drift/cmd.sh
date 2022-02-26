#! /bin/bash

terraform apply -replace google_compute_instance.default

terraform import google_storage_bucket.default terraform-test-53522132
