terraform {

  backend "s3" {

    bucket = "laravel-app-prod-storage"

    key = "terraform/state.tfstate"

    region = "ap-south-1"

    dynamodb_table = "terraform-lock"

    encrypt = true

  }

}