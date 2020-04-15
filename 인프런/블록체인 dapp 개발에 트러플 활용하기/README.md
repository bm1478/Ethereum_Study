# Dapp 개발에 Truffle 개발 도구 사용하기

1. 자바 웹 개발과 이더리움 컨트랙트 개발 비교
Framework (Spring MVC) == Truffle(solc-js) 컴파일, 테스트, 배포 자동화 도구
Tomcat == Ganache (로컬 가상 이더리움 노드)

2. compile 결과 json
중요한 부분: 배포할 때 필요한 abi, bytecode 부분
bytecode가 블록체인에 올라가고, abi는 애플리케이션에서 사용

3. 배포 시
```zsh
truffle migrate --network 네트워크명
```