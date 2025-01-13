output "alb_hostname" {
  description = "The endpoint of the ALB"
  value       = "${aws_alb.this.dns_name}:4000"
}

output "ecs_service" {
  value = aws_ecs_service.this.name
}

output "ecs_cluster" {
  value = aws_ecs_cluster.this.name
}

output "ecr_repository_url" {
  description = "The URL of the ECR repository"
  value       = module.ecr_repo.ecr_repository_url
}

output "task_definition_family" {
  description = "The ECS task definition family"
  value = aws_ecs_task_definition.this.family
}

output "container_name" {
  description = "The name of the ECS container"
  value = var.container_name
}

output "bucket_endpoint" {
  description = "The endpoint of the bucket"
  value = aws_s3_bucket.this.bucket_regional_domain_name
}
