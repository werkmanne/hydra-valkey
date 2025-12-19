terraform {
  backend "s3" {
    bucket         = "prod-terraform-state"
    key            = "redis-module/prod/us-west-2/terraform.tfstate"
    region         = "us-west-2"
    encrypt        = true
    use_lockfile   = true
  }
}