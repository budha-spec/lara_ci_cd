terraform {

  backend "s3" {

    bucket = "laravel-app-prod-terraform-state"

    key = "terraform/state.tfstate"

    region = "ap-south-1"

    dynamodb_table = "terraform-lock"

    encrypt = true

  }

}