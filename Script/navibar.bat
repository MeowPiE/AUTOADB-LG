@echo off
:nav
cls
TITLE NAVBAR v1.0
echo.
echo 1.상태바 숨기기
echo.
echo 2.네비바 숨기기
echo.
echo 3.둘다 숨기기
echo.
echo 4.원상 복구
echo.
set main2=
set /p main2=선택해주세요:
if %main2% LSS 1 ( 
	echo 잘못 입력하셨습니다.
	pause
	goto _nav
)
if %main2% GTR 4 (
	echo 잘못 입력하셨습니다.
	pause
	goto _nav
)
cls

:ChangeResolution
	echo 처리중
	if "%main2%" == "1" (
	    ..\Bin\ADB\adb.exe shell settings put global policy_control immersive.status=*
	)

	if "%main2%" == "2" (
	    ..\Bin\ADB\adb.exe shell settings put global policy_control immersive.navigation=*
	)
	
	if "%main2%" == "3" (
	    ..\Bin\ADB\adb.exe shell settings put global policy_control immersive.full=*
	)

	if "%main2%" == "4" (
	    ..\Bin\ADB\adb.exe shell settings put global policy_control null*
	)
)

echo 작업이 완료되었습니다! 아무키나 누르면 초기화면으로 돌아갑니다.
pause
goto nav