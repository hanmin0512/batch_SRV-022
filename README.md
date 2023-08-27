## SRV-022
- 계정의 비밀번호 미설정, 빈 암호 사용 관리 미흡 취약점

## 보안 위협
- 이 정책이 “사용 안 함”으로 설정된 경우 빈 암호를 가진 로컬 계정에 대하여 터미널 서비스(원격 데스크톱 서비스), Telnet 및 FTP와 같은 네트워크 서비스의 원격 대화형 로그온이 가능하여, 시스템 보안에 심각한 위험을 줄 수 있음

## 판단 기준
- 로컬 계정에서 빈 암호 사용 제한" 정책이 "사용"으로 되어 있을 경우 양호(LimitBlankPasswordUse = 4,1

## batch 파일 실행하여 진단 결과 확인
> ![0](https://github.com/hanmin0512/batch_SRV-022/assets/37041208/7c3849f6-12b4-44df-93cb-0777806e1184)

## 대처 방안
- HKLM\SYSTEM\CurrentControlSet\Control\Lsa" 의 LimitBlankPasswordUse 레지스트리파일 값을 1로 설정.
> ![1](https://github.com/hanmin0512/batch_SRV-022/assets/37041208/fc6f2742-283e-42a2-8d2d-4872b845bda0)

## 대처 방안 후 batch 파일 실행하여 진단 결과 확인
> ![2](https://github.com/hanmin0512/batch_SRV-022/assets/37041208/ee595fca-4319-400a-a5dc-3b4f6c2b7ab2)


