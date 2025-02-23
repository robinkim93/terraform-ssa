terraform {
  backend "s3" {
    bucket  = "saa-tf-state"
    key     = "aws/iam/role/iam-readonly/terraform.tfstate"
    region  = "ap-northeast-2"
    profile = "robin"
  }
}