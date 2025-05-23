EC2는 Infrastructure as a Service로 인프라를 제공하는 클라우드 서비스를 말한다.

EC2는 다음과 같은 서비스를 제공하여 인프라를 구성하도록 도와준다.

1. EC2 Instance
   1. 흔히 EC2라고 혼용하기도 한다. 정확하게는 가상 머신을 대여해서 사용하는 것은 EC2 Instance가 정확한 명칭이다.
2. EBS
   1. 데이터를 가상 드라이브에 저장할 수 있는 서비스
3. ELB
   1. 로드 밸런서로, 요청을 분산할 수 있다.
4. ASG
   1. EC2를 오토 스케일링하여 큰 트래픽에 대비할 수 있다.

EC2는 사이즈와 환경 설정이 가능하다.

1. EC2는 Linux, Windows, MacOS를 선택하여 환경을 구성할 수 있다.
2. 대여한 머신의 성능을 구성할 수 있다. 보통 CPU (코어)의 갯수로 구성한다.
3. RAM의 크기도 설정이 가능
4. 네트워크를 통한 스토리지 공간에 대한 설정 가능 (EBS & EFS)
5. 하드웨어를 통한 스토리지 공간에 대한 설정 가능 (EC2 Instance Store)
6. 네트워크를 선택할 수 있다. 공개 IP의 설정이나 네트워크 카드 설정이 가능하다.
7. Security Group을 설정해 방화벽으로써의 기능을 설정할 수 있다.
8. EC2 User Data를 사용하여 EC2가 부팅될 때 어떠한 동작을 미리 설정해 둘 수 있다.

EC2는 User Data를 통해 bootstraping이 가능하다. bootstraping은 EC2가 최초 부팅될 때, 소프트웨어 다운로드, 업데이트 등 부팅 시 해야할 행동을 자동화할 수 있다. 또한, User Data의 스크립트는 root 계정으로 실행되기 때문에 sudo 로 작성해줘야 한다.
