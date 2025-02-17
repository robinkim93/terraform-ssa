AWS에 접근할 수 있는 방법은 3가지가 있다.

1. AWS Management Console - 비밀번호 및 MFA 인증으로 접근 가능
2. AWS Command Line Interface (CLI) - 터미널에서 access key를 통해 접근 가능
3. AWS Software Developer Kit (SDK) - 코드를 통해 access key를 가지고 접근 가능

AWS 계정 별로 access key를 발급받을 수 있고, 비밀번호와 같기 때문에 공유해서는 안된다.

AWS에서 access key를 발급받으면 Access Key ID와 Secret Access Key가 pair로 발급된다.
Access Key ID 는 유저 이름, Secret Access Key는 비밀번호로 생각하면 된다.

1. AWS CLI
   1. 터미널에서 명령어를 통해 AWS API에 접근해, AWS 서비스를 이용할 수 있다.
   2. CLI 명령어의 조합을 통해 스크립트를 작성하여 특정 작업을 자동화할 수 있다.
2. AWS SDK
   1. 코드에 언어 별로 존재하는 SDK 라이브러리를 설치하고, 사용하여 AWS 서비스를 이용할 수 있도록 하는 것
