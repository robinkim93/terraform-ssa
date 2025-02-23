terraform {
  backend "s3" {
    bucket  = "saa-tf-state"
    key     = "aws/iam/group/admin/terraform.tfstate"
    region  = "ap-northeast-2"
    profile = "robin"
  }
}