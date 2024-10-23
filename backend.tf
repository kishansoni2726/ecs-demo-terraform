terraform{
    backend "s3" {
        bucket = "ecs-demo-terraform"
        region = "us-east-1"
        key = "Infra/terraform.tfstate"
        encrypt = true
    }

    required_version = ">=1.9.8"
    required_providers {
      aws = {
        version = ">=1.9.8"
        source = "hashicorp/aws"
      }
    }
}