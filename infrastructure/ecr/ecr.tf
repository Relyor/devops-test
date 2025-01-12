resource "aws_ecr_repository" "this" {
  name                 = var.repo_name
  image_tag_mutability = "MUTABLE"   # Allows updating tags
  image_scanning_configuration {
    scan_on_push = true  # Enable automatic image scanning
  }
}
