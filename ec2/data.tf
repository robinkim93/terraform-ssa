data "aws_ami" "linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "name"
    values = ["al2023-ami-2023*"]
  }
}

data "aws_vpc" "main_vpc" {
  id = "vpc-0526495e467ba8d2d"
}

data "aws_subnet" "public_subnet" {
  id     = "subnet-079eb455e51ad5010"
  vpc_id = data.aws_vpc.main_vpc.id
}

data "terraform_remote_state" "iam_readonly_profile" {
  backend = "s3"
  config = {
    bucket  = "saa-tf-state"
    key     = "aws/iam/role/iam-readonly/terraform.tfstate"
    region  = "ap-northeast-2"
    profile = "robin"
  }
}