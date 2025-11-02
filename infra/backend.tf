terraform {
  backend "s3" {
    bucket = "tf-debug-lab-nonexistent"
    key    = "state/terraform.tfstate"
    region = "eu-west-1"
  }
}
