@echo off
:nav
cls
TITLE NAVBAR v1.0
echo.
echo 1.���¹� �����
echo.
echo 2.�׺�� �����
echo.
echo 3.�Ѵ� �����
echo.
echo 4.���� ����
echo.
set main2=
set /p main2=�������ּ���:
if %main2% LSS 1 ( 
	echo �߸� �Է��ϼ̽��ϴ�.
	pause
	goto _nav
)
if %main2% GTR 4 (
	echo �߸� �Է��ϼ̽��ϴ�.
	pause
	goto _nav
)
cls

:ChangeResolution
	echo ó����
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

echo �۾��� �Ϸ�Ǿ����ϴ�! �ƹ�Ű�� ������ �ʱ�ȭ������ ���ư��ϴ�.
pause
goto nav