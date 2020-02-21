terraform {
  backend "s3" {
    bucket = "terraform-ganesh123"
    key    = "terraform/dev/helloapp"
    region = "us-east-1"
  }
}
