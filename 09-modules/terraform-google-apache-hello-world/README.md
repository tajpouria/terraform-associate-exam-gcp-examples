# Google Apache Hello World

**This module is just for demonstration purpose and is not intended to use in production**

This module allows you to create a` google_compute_instance` resource, and configures an apache web server on it.

## Inputs

| Name                  | Description                                   | Type   | Default   | Required |
| --------------------- | --------------------------------------------- | ------ | --------- | :------: |
| instance_name         | The name of provisioned instance.             | string | test      |  false   |
| instance_machine_type | The machine type of the provisioned instance. | string | e2-medium |  false   |

## Outputs

| Name      | Description                             |
| --------- | --------------------------------------- |
| public_ip | Provisioned instance public IP address. |
