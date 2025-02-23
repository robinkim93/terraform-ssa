EC2 Instance 내부에 Access Key 및 Secret Key를 입력하여 자격증명을 하는 행위는 잘못된 방법임.
그렇게 되면, 누구든지 EC2 Instance에 접속하여 자격증명을 회수할 수 있다. (보안 취약)

그렇기 때문에 IAM Role을 사용하여 자격증명을 관리하는 것이 좋다.
