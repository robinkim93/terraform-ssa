1. root 계정을 생성하고, 이를 공유하지 않고 사용자를 만들어 개별 계정처럼 사용하는데 이를 가능하게 하는 서비스가 IAM이며 IAM은 글로벌 서비스이다. (사용자를 생성했다면 어떤 리전에서든지 사용이 가능하다는 의미)
2. 회사의 구성원들에게 사용자를 만들어 공유하고, 사용자는 그룹으로 묶을 수 있다.
3. 그룹은 다른 그룹을 포함할 수는 없고 사용자만 포함할 수 있다. 그룹에 정책(권한)을 정하고 해당 그룹에 사용자가 포함된다면 그룹의 정책을 사용할 수 있다.
4. 그룹에 포함되지 않는 사용자가 있을 수 있으며 (권장 X), 하나의 사용자가 여러 그룹에 속할 수 있다.
   ex) TF팀이 구성된다고 하면 새로운 그룹과 정책이 필요하기 때문에 기존의 그룹 + TF팀의 그룹 처럼 중복으로 그룹에 속할 수 있음
5. 사용자에게 정책을 적용할 수도 있음. (사용자 정책 + 그룹 정책 적용)
6. AWS는 사용자에게 모든 권한을 주는 것을 권장하지 않는다. 그 이유는, 수 많은 사용자가 무한정 리소스를 생성한다면 당장에 비용문제에 부딪힐 수 있고, 문제가 발생했을 때 추적하기가 어렵다. 또한, 보안 상 문제가 있을 수 있기 때문에 최소한의 권한을 부여할 것을 권장한다.
