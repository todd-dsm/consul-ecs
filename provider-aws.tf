terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.43"
    }
  }
  backend "s3" {
    dynamodb_table = "tf-state-consul-ecs-stage-lock"
    bucket         = "tf-state-consul-ecs-stage"
    key            = "env/stage"
    region         = "us-west-2"
    encrypt        = true
    //role_arn = "arn:aws:iam::367652197469:role/terraform-backend"
  }
}

provider "aws" {
  region = local.region
  default_tags {
    tags = {
      env     = var.envBuild
      project = var.project
    }
  }
}
