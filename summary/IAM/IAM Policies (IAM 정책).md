1. 정책 구조의 요소

```json
{
  "Version": "2012-10-17",
  "Id": "S3-Account-Permissions",
  "Statement": [
    {
      "Sid": "1",
      "Effect": "Allow",
      "Principal": {
        "AWS": ["arn:aws:iam::123456789012:root"]
      },
      "Action": ["s3:GetObject", "s3:PutObject"],
      "Resource": ["arn:aws:s3::mybucket/*"]
    }
  ]
}
```

Version: 정책 언어의 버전을 명시하며, 보통 2012-10-17 이다.
Id: 정책을 식별하는 id로 필수요소는 아니다.
Statement: 하나일 수 있고, 여러 개일 수 있다. Statement 내부 요소들이 중요하다.
Sid: Statement의 식별 id로 필수요소가 아님
Effect: 해당 Statement가 접근할 API에 접근을 허용할 것인지, 거부할지에 대한 요소 (Allow or Deny)
Principal: 해당 Statement가 적용될 사용자, 그룹, 역할을 지정하는 것. 위의 예시에서는 root 계정에 적용
Action: Effect 내용에 기반해 어떤 API에 적용할 것인지에 대한 목록
Resource: 적용될 Action의 Resource 목록으로, 위의 예시에서는 s3기 때문에 bucket에 접근하였고, 만약 Action에 ec2 관련 내용이 있었다면 Resource에는 어떤 ec2에 적용할 것인지 나타내주면 된다.
Condition: 예시에 나오지는 않았지만 Statement가 언제 적용될지 결정하는 요소라고 보면 됨. 필수요소가 아님
