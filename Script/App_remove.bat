@echo off
:_ADB2
cls
TITLE Uninstaller v 1.1
echo 해당 휴대폰의 통신사를 선택해주세요.
echo 현재 설치된 펌웨어의 통신사를 기준으로합니다.
echo.
echo 1.KT
echo.
echo 2.SKT
echo.
echo 3.U+
echo.
set main2=
set /p main2=통신사 숫자를 선택해주세요:
if %main2% LSS 1 ( 
	echo 잘못 입력하셨습니다.
	pause
	goto _ADB2
)
if %main2% GTR 3 (
	echo 잘못 입력하셨습니다.
	pause
	goto _ADB2
)
cls
echo 경고! 이 작업을 진행시 복구방법은 공장초기화만 가능합니다.
echo 통상적인 쓰래기앱만 제거합니다. 추가로 제거하실꺼면 직접하세요.
echo 작업중 프로그램이 종료되면 심각한 오류가 발생합니다!

:removeapp
if "%main2%" == "1" ( for /f %%i in (..\Bin\APPL\KT.txt) do (
	..\Bin\ADB\adb.exe shell pm uninstall --user 0 %%i
	echo %%i 패키지 처리중
))
if "%main2%" == "2" ( for /f %%i in (..\Bin\APPL\SKT.txt) do (
	..\Bin\ADB\adb.exe shell pm uninstall --user 0 %%i
	echo %%i 패키지 처리중
))
if "%main2%" == "3" ( for /f %%i in (..\Bin\APPL\LGU.txt) do (
	..\Bin\ADB\adb.exe shell pm uninstall --user 0 %%i
	echo %%i 패키지 처리중
))

echo 작업이 완료되었습니다! 아무키나 누르면 초기화면으로 돌아갑니다.
pause
exit
