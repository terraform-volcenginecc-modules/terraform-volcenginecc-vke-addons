# BASIC VKE ADDONS 示例

## 概述

VKE ADDONS 模块的可运行 basic 配置。它从输入变量设置 Provider，并调用已发布的 Registry 模块。

## 用法

```shell
terraform init
terraform plan
terraform apply
terraform plan
terraform destroy
```

## 依赖要求

| 名称 | 版本 |
|---|---|
| Terraform | `>= 1.5.7` |
| OpenTofu | `>= 1.11.8` |

## Providers

| 名称 | 来源 |
|---|---|
| `volcenginecc` | `volcengine/volcenginecc` |

## 资源

| 名称 | 说明 |
|---|---|
| `terraform-volcenginecc-modules/vke-addons/volcenginecc` | 已发布的 VKE ADDONS 模块。 |

## 输入

| 名称 | 说明 |
|---|---|
| `cluster_id` | 模块定义的 cluster_id。 |
| `node_problem_detector_version` | 模块定义的 node_problem_detector_version。 |

## 输出

| 名称 | 说明 |
|---|---|
| `addons` | 模块定义的 addons。 |

## 示例

本目录即为 basic 示例。

## 说明

- 请通过 Provider 支持的配置提供凭据，绝不应写入源文件。
- apply 后的最终 plan 必须报告无变更，才能接受该配置。
