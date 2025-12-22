terraform {
  backend "s3" {
    bucket         = "dev-terraform-state"
    key            = "redis-module/dev/us-west-2/terraform.tfstate"
    region         = "us-west-2"
    encrypt        = true
    dynamodb_table = "terraform-locks"
  }
}
