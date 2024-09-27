# EKS Module

This module creates an Amazon EKS cluster with the necessary node groups, IAM roles, logging, and more.

## Inputs

| Name                | Description                             | Type        | Default     |
|---------------------|-----------------------------------------|-------------|-------------|
| `region`            | The AWS region to deploy resources      | `string`    |             |
| `cluster_name`      | Name of the EKS cluster                 | `string`    |             |
| `cluster_version`   | EKS cluster version                     | `string`    |             |
| `vpc_id`            | VPC ID for EKS cluster                  | `string`    |             |
| `subnet_ids`        | List of subnet IDs for EKS              | `list(string)` |           |
| `node_group_name`   | Name of the node group                  | `string`    |             |

## Outputs

| Name                | Description                             |
|---------------------|-----------------------------------------|
| `cluster_name`      | The name of the EKS cluster             |
| `cluster_endpoint`  | The endpoint for the EKS cluster        |
| `cluster_security_group_id` | Security group for the EKS cluster |
