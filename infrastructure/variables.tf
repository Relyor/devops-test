variable "aws_region" {
    description = "The AWS region services are created in"
    default = "us-east-1"
}

variable "cidr" {
    default = "10.0.0.0/16"
}

variable "port" {
    default = "4000"
}

variable "image_path" {
    default = "992382767287.dkr.ecr.us-east-1.amazonaws.com/my-app-repo:1.0.0"
}

variable "health_check_path" {
    default = "/"
}

variable "fargate_cpu" {
    description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
    default = "1024"
}

variable "fargate_memory" {
    description = "Fargate instance memory to provision (in MiB)"
    default = "2048"
}