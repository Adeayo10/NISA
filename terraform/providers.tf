terraform {
    required_providers {
        aws = {
        source  = "hashicorp/aws"
        version = "~> 3.0"
        }
    }
}

provider "aws" {

    region = "us-west-2"
    secret_key =  var.aws_secret_key
    access_key = var.aws_access_key

}