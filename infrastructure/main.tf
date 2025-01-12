# ---

module "ecr_repo" {
  source = "./ecr"

  repo_name = var.repo_name
}
