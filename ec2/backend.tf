terraform {
  backend "s3" {
    bucket  = "saa-tf-state"
    key     = "aws/ec2/my_first_instance/terraform.tfstate"
    region  = "ap-northeast-2"
    profile = "robin"
  }
}