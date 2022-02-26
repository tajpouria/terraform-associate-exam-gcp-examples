#! /bin/bash

terraform state list

terraform state show google_compute_instance.default

terraform mv show google_compute_instance.default google_compute_instance.new_name

terraform state show google_compute_instance.new_name
