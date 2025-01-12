data "aws_ecr_repository" "this" {
  name = "node-web"  # Replace with your ECR repository name
}

data "aws_availability_zones" "available" {}

# Step 3: Output the Image URI
output "ecr_image_uri" {
  description = "The URI of the image in the ECR repository"
  value       = "${data.aws_ecr_repository.this.repository_url}:latest"
}