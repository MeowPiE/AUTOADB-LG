@echo off
:_ADB2
cls
TITLE Uninstaller v 1.1
echo �ش� �޴����� ��Ż縦 �������ּ���.
echo ���� ��ġ�� �߿����� ��Ż縦 ���������մϴ�.
echo.
echo 1.KT
echo.
echo 2.SKT
echo.
echo 3.U+
echo.
set main2=
set /p main2=��Ż� ���ڸ� �������ּ���:
if %main2% LSS 1 ( 
	echo �߸� �Է��ϼ̽��ϴ�.
	pause
	goto _ADB2
)
if %main2% GTR 3 (
	echo �߸� �Է��ϼ̽��ϴ�.
	pause
	goto _ADB2
)
cls
echo ���! �� �۾��� ����� ��������� �����ʱ�ȭ�� �����մϴ�.
echo ������� ������۸� �����մϴ�. �߰��� �����Ͻǲ��� �����ϼ���.
echo �۾��� ���α׷��� ����Ǹ� �ɰ��� ������ �߻��մϴ�!

:removeapp
if "%main2%" == "1" ( for /f %%i in (..\Bin\APPL\KT.txt) do (
	..\Bin\ADB\adb.exe shell pm uninstall --user 0 %%i
	echo %%i ��Ű�� ó����
))
if "%main2%" == "2" ( for /f %%i in (..\Bin\APPL\SKT.txt) do (
	..\Bin\ADB\adb.exe shell pm uninstall --user 0 %%i
	echo %%i ��Ű�� ó����
))
if "%main2%" == "3" ( for /f %%i in (..\Bin\APPL\LGU.txt) do (
	..\Bin\ADB\adb.exe shell pm uninstall --user 0 %%i
	echo %%i ��Ű�� ó����
))

echo �۾��� �Ϸ�Ǿ����ϴ�! �ƹ�Ű�� ������ �ʱ�ȭ������ ���ư��ϴ�.
pause
exit
