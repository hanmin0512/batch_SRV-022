@echo on

cls

setlocal

PUSHD %~DP0

TITLE SRV-022

echo. SRV-022 START
echo.                                                                                           >> [RESULT]_%COMPUTERNAME%SRV-022.txt 2>nul
echo [SRV-022] "계정의 비밀번호 미설정, 빈 암호 사용 관리 미흡"                                                     >> [RESULT]_%COMPUTERNAME%SRV-022.txt 2>nul
echo.                                                                                           >> [RESULT]_%COMPUTERNAME%SRV-022.txt 2>nul
echo [_START_]                                                                                 >> [RESULT]_%COMPUTERNAME%SRV-022.txt 2>nul
echo # 기준 : "로컬 계정에서 빈 암호 사용 제한" 정책이 "사용"으로 되어 있을 경우 양호(LimitBlankPasswordUse = 4,1)   >> [RESULT]_%COMPUTERNAME%SRV-022.txt 2>nul
echo # 결과 값이 존재하지 않으면 Default 설정 적용(Default 설정: LimitBlankPasswordUse 1 양호 0 이면 취약)                    >> [RESULT]_%COMPUTERNAME%SRV-022.txt 2>nul
echo # 현황                                                                                       >> [RESULT]_%COMPUTERNAME%SRV-022.txt 2>nul
echo.                                                                                           >> [RESULT]_%COMPUTERNAME%SRV-022.txt 2>nul
echo # 1.로컬보안정책 확인                                                                             >> [RESULT]_%COMPUTERNAME%SRV-022.txt 2>nul
reg query "HKLM\SYSTEM\CurrentControlSet\Control\Lsa" /v LimitBlankPasswordUse | find /I "LimitBlankPasswordUse"         >> [RESULT]_%COMPUTERNAME%SRV-022.txt
echo.                                                                                           >> [RESULT]_%COMPUTERNAME%SRV-022.txt 2>nul
echo.                                                                                           >> [RESULT]_%COMPUTERNAME%SRV-022.txt 2>nul
echo [_END_]                                                                                 >> [RESULT]_%COMPUTERNAME%SRV-022.txt 2>nul
echo SRV-022 END                                                                                >> [RESULT]_%COMPUTERNAME%SRV-022.txt 2>nul
echo ######################################################################################     >> [RESULT]_%COMPUTERNAME%SRV-022.txt 2>nul
echo.                                                                                           >> [RESULT]_%COMPUTERNAME%SRV-022.txt 2>nul
echo.                                                                                           >> [RESULT]_%COMPUTERNAME%SRV-022.txt 2>nul
echo [_RSTART_]                                                                                 >> [RESULT]_%COMPUTERNAME%SRV-022.txt 2>nul
echo [_REND_]                                                                                    >> [RESULT]_%COMPUTERNAME%SRV-022.txt 2>nul
