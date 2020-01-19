terraform {
  required_version = ">=0.12.19"
}

provider "aws" {
  profile = "io.thinkstack.terraform"
  region  = "eu-west-1"
  version = "~> 2.36.0"
}

## Build an S3 bucket and DynamoDB for Terraform state and locking
module "bootstrap" {
  source                 = "./modules/bootstrap"
  s3_tfstate_bucket      = "io-thinkstack-terraform-tfstate"
  s3_logging_bucket_name = "io-thinkstack-logging-bucket"
  dynamo_db_table_name   = "terraform-locking"
}

module "tutorial" {
  source = "./modules/tutorial"
}
