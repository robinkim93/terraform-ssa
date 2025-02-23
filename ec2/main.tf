resource "aws_security_group" "allow_http" {
  name        = "allow_http"
  description = "Allow HTTP inbound traffic"
  vpc_id      = data.aws_vpc.main_vpc.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "my_first_instance" {
  ami                         = data.aws_ami.linux.id
  instance_type               = "t2.micro"
  key_name                    = "ec2-tutorial"
  subnet_id                   = data.aws_subnet.public_subnet.id
  associate_public_ip_address = true
  root_block_device {
    volume_size = 8
    volume_type = "gp2"
  }
  iam_instance_profile = data.terraform_remote_state.iam_readonly_profile.outputs.iam_readonly_profile_name

  vpc_security_group_ids = [aws_security_group.allow_http.id]

  user_data = <<EOF
#!/bin/bash
sudo yum update -y
sudo yum install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd
echo "<h1>Hello World</h1>" | sudo tee /var/www/html/index.html
EOF

  tags = {
    Name = "My First Instance"
  }
}