terraform {
  backend "s3" {
    bucket         = "chitra-bucket-12"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
  }
}
