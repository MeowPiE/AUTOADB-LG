@echo off
:_recovery
cls
TITLE recovery v 1.0
echo �ش� �޴����� ��Ż縦 �������ּ���.
echo ���� ��ġ�� �߿����� ��Ż縦 ���������մϴ�.
echo.
echo 1.KT
echo.
echo 2.SKT
echo.
echo 3.U+
echo.
set /p main2=��Ż� ���ڸ� �������ּ���:
if %main2% LSS 1 ( 
	echo �߸� �Է��ϼ̽��ϴ�.
	pause
	goto _recovery
)
if %main2% GTR 3 (
	echo �߸� �Է��ϼ̽��ϴ�.
	pause
	goto _recovery
)

cls
echo ���! adb�� �����ߴ� ��� ���� ������ �˴ϴ�.
echo ��Ż� �� �ý��� �� ������ �ʰ� ������ �˴ϴ�.
echo �۾��� ���α׷��� ����Ǹ� �ɰ��� ������ �߻��մϴ�!

:recoverapp
	if "%main2%" == "1" ( for /f %%i in (..\APPL\KT.txt) do (
		..\Bin\ADB\adb.exe shell cmd package install-existing %%i
		echo %%i ��Ű�� ó����
	))
	if "%main2%" == "2" ( for /f %%i in (..\APPL\SKT.txt) do (
		..\Bin\ADB\adb.exe shell cmd package install-existing %%i
		echo %%i ��Ű�� ó����
	))
	if "%main2%" == "3" ( for /f %%i in (..\APPL\LGU.txt) do (
		..\Bin\ADB\adb.exe shell cmd package install-existing %%i
		echo %%i ��Ű�� ó����
	))

echo �۾��� �Ϸ�Ǿ����ϴ�! �ƹ�Ű�� ������ �ʱ�ȭ������ ���ư��ϴ�.
pause
exit