<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.83.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.83.1 |
| <a name="provider_template"></a> [template](#provider\_template) | 2.2.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ecr_repo"></a> [ecr\_repo](#module\_ecr\_repo) | ./ecr | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_alb.this](https://registry.terraform.io/providers/hashicorp/aws/5.83.1/docs/resources/alb) | resource |
| [aws_alb_listener.this](https://registry.terraform.io/providers/hashicorp/aws/5.83.1/docs/resources/alb_listener) | resource |
| [aws_alb_target_group.this](https://registry.terraform.io/providers/hashicorp/aws/5.83.1/docs/resources/alb_target_group) | resource |
| [aws_cloudwatch_log_group.cb_log_group](https://registry.terraform.io/providers/hashicorp/aws/5.83.1/docs/resources/cloudwatch_log_group) | resource |
| [aws_cloudwatch_log_stream.cb_log_stream](https://registry.terraform.io/providers/hashicorp/aws/5.83.1/docs/resources/cloudwatch_log_stream) | resource |
| [aws_ecs_cluster.this](https://registry.terraform.io/providers/hashicorp/aws/5.83.1/docs/resources/ecs_cluster) | resource |
| [aws_ecs_service.this](https://registry.terraform.io/providers/hashicorp/aws/5.83.1/docs/resources/ecs_service) | resource |
| [aws_ecs_task_definition.this](https://registry.terraform.io/providers/hashicorp/aws/5.83.1/docs/resources/ecs_task_definition) | resource |
| [aws_eip.gw](https://registry.terraform.io/providers/hashicorp/aws/5.83.1/docs/resources/eip) | resource |
| [aws_iam_policy.s3_access_policy](https://registry.terraform.io/providers/hashicorp/aws/5.83.1/docs/resources/iam_policy) | resource |
| [aws_iam_role.ecs_task_execution_role](https://registry.terraform.io/providers/hashicorp/aws/5.83.1/docs/resources/iam_role) | resource |
| [aws_iam_role.s3_ecs_role](https://registry.terraform.io/providers/hashicorp/aws/5.83.1/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.ecs_task_execution_policy](https://registry.terraform.io/providers/hashicorp/aws/5.83.1/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.s3_policy_attachment](https://registry.terraform.io/providers/hashicorp/aws/5.83.1/docs/resources/iam_role_policy_attachment) | resource |
| [aws_internet_gateway.gw](https://registry.terraform.io/providers/hashicorp/aws/5.83.1/docs/resources/internet_gateway) | resource |
| [aws_nat_gateway.gw](https://registry.terraform.io/providers/hashicorp/aws/5.83.1/docs/resources/nat_gateway) | resource |
| [aws_route.internet_access](https://registry.terraform.io/providers/hashicorp/aws/5.83.1/docs/resources/route) | resource |
| [aws_route_table.private](https://registry.terraform.io/providers/hashicorp/aws/5.83.1/docs/resources/route_table) | resource |
| [aws_route_table_association.private](https://registry.terraform.io/providers/hashicorp/aws/5.83.1/docs/resources/route_table_association) | resource |
| [aws_s3_bucket.this](https://registry.terraform.io/providers/hashicorp/aws/5.83.1/docs/resources/s3_bucket) | resource |
| [aws_security_group.ecs_tasks](https://registry.terraform.io/providers/hashicorp/aws/5.83.1/docs/resources/security_group) | resource |
| [aws_security_group.lb](https://registry.terraform.io/providers/hashicorp/aws/5.83.1/docs/resources/security_group) | resource |
| [aws_subnet.private](https://registry.terraform.io/providers/hashicorp/aws/5.83.1/docs/resources/subnet) | resource |
| [aws_subnet.public](https://registry.terraform.io/providers/hashicorp/aws/5.83.1/docs/resources/subnet) | resource |
| [aws_vpc.ecs_vpc](https://registry.terraform.io/providers/hashicorp/aws/5.83.1/docs/resources/vpc) | resource |
| [aws_availability_zones.available](https://registry.terraform.io/providers/hashicorp/aws/5.83.1/docs/data-sources/availability_zones) | data source |
| [template_file.web_app](https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/file) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | The AWS region services are created in | `string` | `"us-east-1"` | no |
| <a name="input_cidr"></a> [cidr](#input\_cidr) | n/a | `string` | `"10.0.0.0/16"` | no |
| <a name="input_container_name"></a> [container\_name](#input\_container\_name) | n/a | `string` | `"web-app"` | no |
| <a name="input_fargate_cpu"></a> [fargate\_cpu](#input\_fargate\_cpu) | Fargate instance CPU units to provision (1 vCPU = 1024 CPU units) | `string` | `"1024"` | no |
| <a name="input_fargate_memory"></a> [fargate\_memory](#input\_fargate\_memory) | Fargate instance memory to provision (in MiB) | `string` | `"2048"` | no |
| <a name="input_health_check_path"></a> [health\_check\_path](#input\_health\_check\_path) | n/a | `string` | `"/"` | no |
| <a name="input_image_path"></a> [image\_path](#input\_image\_path) | n/a | `string` | `"471112661735.dkr.ecr.us-east-1.amazonaws.com/node-web:1.0.0"` | no |
| <a name="input_port"></a> [port](#input\_port) | n/a | `string` | `"4000"` | no |
| <a name="input_repo_name"></a> [repo\_name](#input\_repo\_name) | The name of the ECR repository | `string` | `"node-web"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_alb_hostname"></a> [alb\_hostname](#output\_alb\_hostname) | The endpoint of the ALB |
| <a name="output_bucket_endpoint"></a> [bucket\_endpoint](#output\_bucket\_endpoint) | The endpoint of the bucket |
| <a name="output_container_name"></a> [container\_name](#output\_container\_name) | The name of the ECS container |
| <a name="output_ecr_repository_url"></a> [ecr\_repository\_url](#output\_ecr\_repository\_url) | The URL of the ECR repository |
| <a name="output_ecs_cluster"></a> [ecs\_cluster](#output\_ecs\_cluster) | n/a |
| <a name="output_ecs_service"></a> [ecs\_service](#output\_ecs\_service) | n/a |
| <a name="output_task_definition_family"></a> [task\_definition\_family](#output\_task\_definition\_family) | The ECS task definition family |
<!-- END_TF_DOCS -->