@echo off
:_recovery
cls
TITLE recovery v 2.1
echo ������� ���� �������ּ���
echo.
echo 1.G6 2.G7 3.G8 4.V30
echo.
echo 5.V40 6.V50
echo.
set main=
set /p main=���ڸ� �Է����ּ��� :

if "%main%" == "1" goto _G6
if "%main%" == "2" goto _G7
if "%main%" == "3" goto _G8
if "%main%" == "4" goto _v30
if "%main%" == "5" goto _v40
if "%main%" == "6" goto _v50
if %main% LSS 1(
	echo �߸� �Է��ϼ̽��ϴ�.
	pause
	goto main
)
if %main% GTR 6 (
	echo �߸� �Է��ϼ̽��ϴ�.
	pause
	goto main
)
:_G6
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
	goto _G6
)
if %main2% GTR 3 (
	echo �߸� �Է��ϼ̽��ϴ�.
	pause
	goto _G6
)

cls
echo ���! adb�� �����ߴ� ��� ���� ������ �˴ϴ�.
echo ��Ż� �� �ý��� �� ������ �ʰ� ������ �˴ϴ�.
echo �۾��� ���α׷��� ����Ǹ� �ɰ��� ������ �߻��մϴ�!

:recoverapp
	if "%main2%" == "1" ( for /f %%i in (Bin\APPL\K_G6.txt) do (
		Bin\ADB\adb.exe shell cmd package install-existing %%i
		echo %%i ��Ű�� ó����
	))
	if "%main2%" == "2" ( for /f %%i in (Bin\APPL\SK_G6.txt) do (
		Bin\ADB\adb.exe shell cmd package install-existing %%i
		echo %%i ��Ű�� ó����
	))
	if "%main2%" == "3" ( for /f %%i in (Bin\APPL\U_G6.txt) do (
		Bin\ADB\adb.exe shell cmd package install-existing %%i
		echo %%i ��Ű�� ó����
	))

echo �۾��� �Ϸ�Ǿ����ϴ�! �ƹ�Ű�� ������ �ʱ�ȭ������ ���ư��ϴ�.
pause
goto main

:_G7
echo �ش� �޴����� ��Ż縦 �������ּ���.
echo ���� ��ġ�� �߿����� ��Ż縦 ���������մϴ�.
echo.
echo 1.KT
echo.
echo 2.SKT
echo.
echo 3.U+
echo.
set /p main3=��Ż� ���ڸ� �������ּ���:
if %main3% LSS 1 ( 
	echo �߸� �Է��ϼ̽��ϴ�.
	pause
	goto _G7
)
if %main3% GTR 3 (
	echo �߸� �Է��ϼ̽��ϴ�.
	pause
	goto _G7
)

cls
echo ���! adb�� �����ߴ� ��� ���� ������ �˴ϴ�.
echo ��Ż� �� �ý��� �� ������ �ʰ� ������ �˴ϴ�.
echo �۾��� ���α׷��� ����Ǹ� �ɰ��� ������ �߻��մϴ�!

:recoverapp
	if "%main3%" == "1" ( for /f %%i in (Bin\APPL\K_G7.txt) do (
		Bin\ADB\adb.exe shell cmd package install-existing %%i
		echo %%i ��Ű�� ó����
	))
	if "%main3%" == "2" ( for /f %%i in (Bin\APPL\SK_G7.txt) do (
		Bin\ADB\adb.exe shell cmd package install-existing %%i
		echo %%i ��Ű�� ó����
	))
	if "%main3%" == "3" ( for /f %%i in (Bin\APPL\U_G7.txt) do (
		Bin\ADB\adb.exe shell cmd package install-existing %%i
		echo %%i ��Ű�� ó����
	))

echo �۾��� �Ϸ�Ǿ����ϴ�! �ƹ�Ű�� ������ �ʱ�ȭ������ ���ư��ϴ�.
pause
goto main

:_G8
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
if %main4% LSS 1 ( 
	echo �߸� �Է��ϼ̽��ϴ�.
	pause
	goto _G8
)
if %main4% GTR 3 (
	echo �߸� �Է��ϼ̽��ϴ�.
	pause
	goto _G8
)

cls
echo ���! adb�� �����ߴ� ��� ���� ������ �˴ϴ�.
echo ��Ż� �� �ý��� �� ������ �ʰ� ������ �˴ϴ�.
echo �۾��� ���α׷��� ����Ǹ� �ɰ��� ������ �߻��մϴ�!

:recoverapp
	if "%main4%" == "1" ( for /f %%i in (Bin\APPL\K_G8.txt) do (
		Bin\ADB\adb.exe shell cmd package install-existing %%i
		echo %%i ��Ű�� ó����
	))
	if "%main4%" == "2" ( for /f %%i in (Bin\APPL\SK_G8.txt) do (
		Bin\ADB\adb.exe shell cmd package install-existing %%i
		echo %%i ��Ű�� ó����
	))
	if "%main4%" == "3" ( for /f %%i in (Bin\APPL\U_G8.txt) do (
		Bin\ADB\adb.exe shell cmd package install-existing %%i
		echo %%i ��Ű�� ó����
	))

echo �۾��� �Ϸ�Ǿ����ϴ�! �ƹ�Ű�� ������ �ʱ�ȭ������ ���ư��ϴ�.
pause
goto main

:_v30
echo �ش� �޴����� ��Ż縦 �������ּ���.
echo ���� ��ġ�� �߿����� ��Ż縦 ���������մϴ�.
echo.
echo 1.KT
echo.
echo 2.SKT
echo.
echo 3.U+
echo.
set /p main5=��Ż� ���ڸ� �������ּ���:
if %main5% LSS 1 ( 
	echo �߸� �Է��ϼ̽��ϴ�.
	pause
	goto _v30
)
if %main5% GTR 3 (
	echo �߸� �Է��ϼ̽��ϴ�.
	pause
	goto _v30
)

cls
echo ���! adb�� �����ߴ� ��� ���� ������ �˴ϴ�.
echo ��Ż� �� �ý��� �� ������ �ʰ� ������ �˴ϴ�.
echo �۾��� ���α׷��� ����Ǹ� �ɰ��� ������ �߻��մϴ�!

:recoverapp
	if "%main5%" == "1" ( for /f %%i in (Bin\APPL\K_V30.txt) do (
		Bin\ADB\adb.exe shell cmd package install-existing %%i
		echo %%i ��Ű�� ó����
	))
	if "%main5%" == "2" ( for /f %%i in (Bin\APPL\SK_V30.txt) do (
		Bin\ADB\adb.exe shell cmd package install-existing %%i
		echo %%i ��Ű�� ó����
	))
	if "%main5%" == "3" ( for /f %%i in (Bin\APPL\U_V30.txt) do (
		Bin\ADB\adb.exe shell cmd package install-existing %%i
		echo %%i ��Ű�� ó����
	))

echo �۾��� �Ϸ�Ǿ����ϴ�! �ƹ�Ű�� ������ �ʱ�ȭ������ ���ư��ϴ�.
pause
goto main

:_v40
echo �ش� �޴����� ��Ż縦 �������ּ���.
echo ���� ��ġ�� �߿����� ��Ż縦 ���������մϴ�.
echo.
echo 1.KT
echo.
echo 2.SKT
echo.
echo 3.U+
echo.
set /p main6=��Ż� ���ڸ� �������ּ���:
if %main6% LSS 1 ( 
	echo �߸� �Է��ϼ̽��ϴ�.
	pause
	goto _v40
)
if %main6% GTR 3 (
	echo �߸� �Է��ϼ̽��ϴ�.
	pause
	goto _v40
)

cls
echo ���! adb�� �����ߴ� ��� ���� ������ �˴ϴ�.
echo ��Ż� �� �ý��� �� ������ �ʰ� ������ �˴ϴ�.
echo �۾��� ���α׷��� ����Ǹ� �ɰ��� ������ �߻��մϴ�!

:recoverapp
	if "%main6%" == "1" ( for /f %%i in (Bin\APPL\K_V40.txt) do (
		Bin\ADB\adb.exe shell cmd package install-existing %%i
		echo %%i ��Ű�� ó����
	))
	if "%main6%" == "2" ( for /f %%i in (Bin\APPL\SK_V40.txt) do (
		Bin\ADB\adb.exe shell cmd package install-existing %%i
		echo %%i ��Ű�� ó����
	))
	if "%main6%" == "3" ( for /f %%i in (Bin\APPL\U_V40.txt) do (
		Bin\ADB\adb.exe shell cmd package install-existing %%i
		echo %%i ��Ű�� ó����
	))

echo �۾��� �Ϸ�Ǿ����ϴ�! �ƹ�Ű�� ������ �ʱ�ȭ������ ���ư��ϴ�.
pause
goto main

:_v50
echo �ش� �޴����� ��Ż縦 �������ּ���.
echo ���� ��ġ�� �߿����� ��Ż縦 ���������մϴ�.
echo.
echo 1.KT
echo.
echo 2.SKT
echo.
echo 3.U+
echo.
set /p main7=��Ż� ���ڸ� �������ּ���:
if %main7% LSS 1 ( 
	echo �߸� �Է��ϼ̽��ϴ�.
	pause
	goto _v50
)
if %main7% GTR 3 (
	echo �߸� �Է��ϼ̽��ϴ�.
	pause
	goto _v50
)

cls
echo ���! adb�� �����ߴ� ��� ���� ������ �˴ϴ�.
echo ��Ż� �� �ý��� �� ������ �ʰ� ������ �˴ϴ�.
echo �۾��� ���α׷��� ����Ǹ� �ɰ��� ������ �߻��մϴ�!

:recoverapp
	if "%main7%" == "1" ( for /f %%i in (Bin\APPL\K_V50.txt) do (
		Bin\ADB\adb.exe shell cmd package install-existing %%i
		echo %%i ��Ű�� ó����
	))
	if "%main7%" == "2" ( for /f %%i in (Bin\APPL\SK_V50.txt) do (
		Bin\ADB\adb.exe shell cmd package install-existing %%i
		echo %%i ��Ű�� ó����
	))
	if "%main7%" == "3" ( for /f %%i in (Bin\APPL\U_V50.txt) do (
		Bin\ADB\adb.exe shell cmd package install-existing %%i
		echo %%i ��Ű�� ó����
	))

echo �۾��� �Ϸ�Ǿ����ϴ�! �ƹ�Ű�� ������ �ʱ�ȭ������ ���ư��ϴ�.
pause
goto main