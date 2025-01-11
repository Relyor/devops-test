resource "aws_ecr_repository" "my_ecr_repo" {
  name                 = "my-app-repo"
  image_tag_mutability = "MUTABLE"   # Allows updating tags
  image_scanning_configuration {
    scan_on_push = true  # Enable automatic image scanning
  }
}