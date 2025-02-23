resource "aws_iam_role" "iam_readonly" {
  name = "iam_readonly"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "iam_readonly_policy" {
  role       = aws_iam_role.iam_readonly.name
  policy_arn = "arn:aws:iam::aws:policy/IAMReadOnlyAccess"
}

resource "aws_iam_instance_profile" "iam_readonly_profile" {
  name = "iam_readonly_profile"
  role = aws_iam_role.iam_readonly.name
}
