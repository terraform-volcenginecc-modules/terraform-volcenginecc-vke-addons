# COMPLETE VKE ADDONS Example

## Overview

Runnable complete configuration for the VKE ADDONS module. It configures the provider from input variables and calls the published Registry module.

## Usage

```shell
terraform init
terraform plan
terraform apply
terraform plan
terraform destroy
```

## Requirements

| Name | Version |
|---|---|
| Terraform | `>= 1.5.7` |
| OpenTofu | `>= 1.11.8` |

## Providers

| Name | Source |
|---|---|
| `volcenginecc` | `volcengine/volcenginecc` |

## Resources

| Name | Description |
|---|---|
| `terraform-volcenginecc-modules/vke-addons/volcenginecc` | Published VKE ADDONS module. |

## Inputs

| Name | Description |
|---|---|
| `cluster_id` | Module-defined cluster_id. |
| `node_problem_detector_version` | Module-defined node_problem_detector_version. |
| `security_scan_version` | Module-defined security_scan_version. |
| `image_accelerator_version` | Module-defined image_accelerator_version. |
| `log_collector_version` | Module-defined log_collector_version. |

## Outputs

| Name | Description |
|---|---|
| `addons` | Module-defined addons. |

## Examples

This directory is the complete example.

## Notes

- Supply credentials through supported provider configuration, never in source files.
- The final plan after apply must report no changes before the configuration is accepted.
