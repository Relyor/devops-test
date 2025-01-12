variable "aws_region" {
  description = "The AWS region services are created in"
  default     = "us-east-1"
}

variable "cidr" {
  default = "10.0.0.0/16"
}

variable "port" {
  default = "4000"
}

variable "image_path" {
  default = "471112661735.dkr.ecr.us-east-1.amazonaws.com/node-web:1.0.0"
}

variable "container_name" {
  default = "web-app"
}

variable "health_check_path" {
  default = "/"
}

variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
  default     = "1024"
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  default     = "2048"
}

variable "repo_name" {
  description = "The name of the ECR repository"
  default     = "node-web"
}
