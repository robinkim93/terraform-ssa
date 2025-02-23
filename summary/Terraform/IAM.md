```terraform
# EC2 읽기 전용 역할 생성
resource "aws_iam_role" "ec2_readonly" {
  name = "ec2_readonly_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
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

# EC2 읽기 전용 정책 연결
resource "aws_iam_role_policy_attachment" "ec2_readonly_policy" {
  role       = aws_iam_role.ec2_readonly.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ReadOnlyAccess"
}

# 인스턴스 프로파일 생성 (EC2에서 역할을 사용하기 위해 필요)
resource "aws_iam_instance_profile" "ec2_readonly_profile" {
  name = "ec2_readonly_profile"
  role = aws_iam_role.ec2_readonly.name
}

위의 코드처럼 IAM Role을 사용할 때, 역할을 생성하고, 해당 역할에 정책을 연결해서 사용하는 것이 좋다.

sts:AssumeRole : 역할을 가져오는 권한을 부여한다. 쉽게는, 특정 역할을 맡을 수 있는 권한을 준다. 예를 들어, AssumeRole을 allow하지 않으면, 특정 서비스는 해당 역할을 사용 할 수 없다.

Role을 생성하면서 inline으로 arn을 지정할 수 있지만, 굳이 2단계로 나눠서 작성하는 이유는, 하나의 역할에 여러 정책을 쉽게 연결 할 수 있고, 정책을 변경할 때 쉽게 변경할 수 있기 때문이다. 또한, 해당 역할의 신뢰 관계와 권한을 명확히 구분할 수 있다.
```
