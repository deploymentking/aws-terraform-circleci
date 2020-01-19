terraform {
  backend "s3" {
    bucket = "io-thinkstack-terraform-tfstate"
    key    = "tutorial/getting-started.tfstate"
    profile = "io.thinkstack.terraform"
    region = "eu-west-1"
  }
}
