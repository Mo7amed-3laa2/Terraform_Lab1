terraform {
  backend "s3" {
    bucket         = "terraform-s3bucket-fstate"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-dynamoDB-lockfstate"
  }
}