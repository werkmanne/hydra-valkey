module "context" {
  source  = "gitlab.com/shift4payments/common-labels/aws"
  version = "~>1.1.5"
  
  # Required inputs for the labels module
  env     = var.environment
  region  = var.region
  project = "hydra"
  owner   = "D0"
  
  # Git repository information
  repo_url     = var.git_repo
  repo_name    = var.git_repo_name
  repo_version = var.git_repo_version
}