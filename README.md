# terraform-volcenginecc-vke-addons

## Overview

Terraform module for managing Volcengine VKE ADDONS resources with the `volcenginecc` provider. The caller owns provider authentication, region configuration, and external resources passed by ID.

## Usage

```hcl
module "vke_addons" {
  source  = "terraform-volcenginecc-modules/vke-addons/volcenginecc"
  version = "~> 1.0"

  # Set the required module inputs for your environment.
}
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
| `volcenginecc_vke_addon` | Module-defined volcenginecc_vke_addon. |

## Inputs

| Name | Description |
|---|---|
| `cluster_id` | Module-defined cluster_id. |
| `addons` | Module-defined addons. |

## Outputs

| Name | Description |
|---|---|
| `addons` | Module-defined addons. |
| `addon_ids` | Module-defined addon_ids. |

## Examples

- `basic`: independently runnable basic configuration.
- `complete`: independently runnable complete configuration.

## Notes

- Configure credentials using supported provider mechanisms; do not put access keys in module files.
- Review replacement behavior and provider constraints before applying changes.
- Run `terraform plan` after apply and confirm that the second plan has no changes.
