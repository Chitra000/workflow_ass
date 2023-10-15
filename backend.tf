terraform {
  backend "s3" {
    bucket         = "test-bucket2233"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "karan01"
  }
}
