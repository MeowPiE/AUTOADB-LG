@echo off
:_recovery
cls
TITLE recovery v 1.0
echo 해당 휴대폰의 통신사를 선택해주세요.
echo 현재 설치된 펌웨어의 통신사를 기준으로합니다.
echo.
echo 1.KT
echo.
echo 2.SKT
echo.
echo 3.U+
echo.
set /p main2=통신사 숫자를 선택해주세요:
if %main2% LSS 1 ( 
	echo 잘못 입력하셨습니다.
	pause
	goto _recovery
)
if %main2% GTR 3 (
	echo 잘못 입력하셨습니다.
	pause
	goto _recovery
)

cls
echo 경고! adb로 삭제했던 모든 앱이 복원이 됩니다.
echo 통신사 앱 시스템 앱 가리지 않고 복원이 됩니다.
echo 작업중 프로그램이 종료되면 심각한 오류가 발생합니다!

:recoverapp
	if "%main2%" == "1" ( for /f %%i in (..\APPL\KT.txt) do (
		..\Bin\ADB\adb.exe shell cmd package install-existing %%i
		echo %%i 패키지 처리중
	))
	if "%main2%" == "2" ( for /f %%i in (..\APPL\SKT.txt) do (
		..\Bin\ADB\adb.exe shell cmd package install-existing %%i
		echo %%i 패키지 처리중
	))
	if "%main2%" == "3" ( for /f %%i in (..\APPL\LGU.txt) do (
		..\Bin\ADB\adb.exe shell cmd package install-existing %%i
		echo %%i 패키지 처리중
	))

echo 작업이 완료되었습니다! 아무키나 누르면 초기화면으로 돌아갑니다.
pause
exit